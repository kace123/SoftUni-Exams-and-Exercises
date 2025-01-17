﻿using CommandPattern.Core.Contracts;
using System;
using System.Collections.Generic;
using System.Text;

namespace CommandPattern.Core.Models
{
    public class Engine : IEngine
    {
        private readonly ICommandInterpreter commandInterpreter;

        public Engine(ICommandInterpreter commandInterpeter)
        {
            this.commandInterpreter = commandInterpeter;
        }
        public void Run()
        {
            while (true)
            {
                string input = Console.ReadLine();

                string result = this.commandInterpreter.Read(input);

                if (result == null)
                {
                    break;
                }

                Console.WriteLine(result);
            }
        }
    }
}
