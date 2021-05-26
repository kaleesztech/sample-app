variable launch_template {
    type="map"
    default = {
        name = "MyCustomLaunchTemplate"
        image_id = "ami-0860c9429baba6ad2"
        instance_type = "t2.micro"
    }
}

variable asg_vars {
    type="map"
    default = {
        asg_name = "myasg"
        max_size = "5"
        min_size = "1"
        desired_capacity = "2"
    }
}

variable key_pair {
    type="map"
    default = {
        key_name = "mylocalkey"
        public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+bPYuYz08VFWq2N9Ar6w/ZFWsGux/lvykXIsGUjLq3VfeKRCVAyYrmiHlceHqMXE8gM6tEtFUM0Qu/wa9FH9Vy0o/7wk7x0XwRXcNHFaZV2bvXpCSIQc5B1prX23MhqEwAi712KD1AAJiL6uH9tirGwpbUO2Hk6wH6Ik8lYRgb4P1kgk7llo1ufgkMQXWTyT2oIty9APSzFCQFbjg2Y99JpwmIFqGY/UvWrVRZbc9sW2CR1KWDAkP9j5AVinBQctc5q0BmlBN5wmLw893PacDZ0nPRoVjjprInBog9njXlBuAfIJr5o8iUInUo5tFa3F6X49L+VLitDCjppNMAlr3 zilker@zilker-Latitude-3470"
    }
}

variable azs {
    type="list"
    default =["ap-south-1a"]
}