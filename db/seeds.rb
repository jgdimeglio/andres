 User.create(:email => 'admin@test.com',
					:name => 'admin', 
					:admin => true,
				        :password => "Admin1234")



 Advert.create(:title => 'Publicity',
					:text => 'Compre compre!', 
					:enabled => 'No')

 Advert.create(:title => 'Publicom',
					:text => 'Ofertas !', 
					:enabled => 'Yes')

 Advert.create(:title => 'Publicate.com',
					:text => 'Ultimas ofertas!', 
					:enabled => 'Yes')

 Advert.create(:title => 'Publicaya.com.ar',
					:text => 'No te pierdas esta oportunidad', 
					:enabled => 'Yes')

 Advert.create(:title => 'republica.com',
					:text => 'ultimas novedades', 
					:enabled => 'No')
