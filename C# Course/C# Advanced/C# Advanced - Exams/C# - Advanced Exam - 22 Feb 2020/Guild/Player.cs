﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Guild
{
    public class Player
    {
        public string Name { get; set; }
        public string Class { get; set; }
        public string Rank { get; set; }
        public string Description { get; set; }

        public Player(string name, string classInput)
        {
            this.Name = name;
            this.Class = classInput;
            this.Rank = "Trial";
            this.Description = "n/a";
        }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine($"Player {this.Name}: {this.Class}");
            sb.AppendLine($"Rank: {this.Rank}");
            sb.AppendLine($"Description: {this.Description}");

            return sb.ToString().TrimEnd();
        }
    }
}
