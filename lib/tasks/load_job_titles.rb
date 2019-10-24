namespace :db do
  desc "Loads job_titles in database"
  task :job_titles => :environment do |t|
    job_titles_list = YAML.load("#{Rails.root}/config/initializers/job_titles.yml")['job_titles']
    job_titles.each do |job_title|
      Job_title.find_or_create_by_name(job_title)
    end
  end
end
