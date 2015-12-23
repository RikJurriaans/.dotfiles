function list_my_stories
  set stories (jira ls -a rjurriaans)
  if [ $stories ]
    echo $stories
  else
    echo "No stories are assigned to you, have a nice day!"
  end
end

function get_story_numbers
  grep -oh -E "^ELM-([0-9]{4})"
end

function get_assinged_story_numbers
  list_my_stories | get_story_numbers
end
