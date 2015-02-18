module Command
  extend ActiveSupport::Concern



  def process_command(cmd)
    cmd << '--help' if cmd.empty?

    help_message = <<-EOT
        Usage: COMMAND [ARGS]

        The most common commands are:
        create_story
        list_stories
        delete_story
        complete_story


        All commands can be run with -h (or --help) for more information.
    EOT

    command = cmd
    @id = cmd.shift

    case command
      when 'create_story'
        #require 'rails/generators'
        puts "Story created" #Simple test


      when '-h', '--help'
        puts help_message

      else
        puts "Error: Command '#{command}' not recognized"
        puts help_message
      #exit(1)



    end



  end
end