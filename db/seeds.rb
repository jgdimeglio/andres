 User.create(:email => 'admin@test.com',
					:name => 'admin', 
					:admin => true,
				        :password => "Admin1234")



 Advert.create(:title => 'Publicity',
					:text => 'Compre compre!', 
					:enable => 'No')

 Advert.create(:title => 'Publicom',
					:text => 'Ofertas !', 
					:enable => 'Yes')

 Advert.create(:title => 'Publicate.com',
					:text => 'Ultimas ofertas!', 
					:enable => 'Yes')

 Advert.create(:title => 'Publicaya.com.ar',
					:text => 'No te pierdas esta oportunidad', 
					:enable => 'Yes')

 Advert.create(:title => 'republica.com',
					:text => 'ultimas novedades', 
					:enable => 'No')
