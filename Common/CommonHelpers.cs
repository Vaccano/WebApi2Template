using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public static class CommonHelpers
    {
        /// <summary>
        /// Return a date time that is close to now but the same for the entire run.
        /// </summary>
        public static DateTime Now { get; private set; }

        static CommonHelpers()
        {
            Now = DateTime.Now;
        }

        /// <summary>
        /// Reads the value of the specified key from the appSettings
        /// section of the app.config file.
        /// </summary>
        public static string GetAppSetting(string key)
        {
            string value = ConfigurationManager.AppSettings[key];
            return (value ?? "Key not found in AppSettings: " + key);
        }


        public static T GetAppSetting<T>(string key, T defaultValue)
        {
            if (!string.IsNullOrEmpty(key))
            {
                var value = ConfigurationManager.AppSettings[key];
                try
                {
                    if (value != null)
                    {
                        var theType = typeof(T);
                        if (theType.IsEnum)
                            return (T)Enum.Parse(theType, value.ToString(), true);
                        return (T)Convert.ChangeType(value, theType);
                    }
                    return default(T);
                }
                catch
                {
                    // We return a default value if the getting of the value fails.
                }
            }
            return defaultValue;
        }

        /// <summary>
        /// Provides the full stack of error messages from an exception (including inner exceptions).
        /// </summary>
        /// <param name="exception">Exception to get the message for</param>
        /// <param name="callerName">This is filled in automatically and should never be manually passed in.</param>
        /// <returns></returns>
        public static string GetFullExceptionMessage(this Exception exception, [CallerMemberName] string callerName = "")
        {
            if (exception == null)
                return "No Message: Exception provided was Null.  Called from: " + callerName;

            Exception iterationException = exception;
            var message = iterationException.Message;
            while (iterationException.InnerException != null)
            {
                message = Environment.NewLine + iterationException.InnerException.Message;
                iterationException = iterationException.InnerException;
            }

            return message;
        }


    }
}
