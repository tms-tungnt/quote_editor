# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
companies = Company.create!([ {name: "KPMG"}, {name:"PwC"} ])
User.create!([{email: "accountant@kpmg.com", password: 'password',
            company_id: companies.first.id},
            {email: "manager@kpmg.com", password: 'password',
            company_id: companies.first.id},
            {email: "eavesdropper@pwc.com", password: 'password',
            company_id: companies[1].id}
            ])
quotes = Quote.create!(name: "First quote", company_id: companies.first.id)
LineItemDate.create!(quote_id: quotes .id, date: Date.current)