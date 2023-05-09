user1 = User.where(email:'testing1@example.com').first_or_create(password:'password', password_confirmation:'password')

user2 = User.where(email:'testing2@example.com').first_or_create(password:'password', password_confirmation:'password')

apartment1 = [
    {
        street: 'Welcome Ave.',
            unit: '10',
            city: 'Crystal',
            state: 'Minnesota',
            square_footage: 1000,
            price: '1800',
            bedrooms: 3,
            bathrooms: 1.5,
            pets: 'no',
            image: 'https://tse1.mm.bing.net/th?id=OIP.PeXLTAq4rYPNPueypjWwngHaEJ&pid=Api&P=0',
            manager:'Mr. Nguyen'
    },
    {
        street: 'Schuyler St',
            unit: '11',
            city: 'San Diego',
            state: 'California',
            square_footage: 800,
            price: '1200',
            bedrooms: 2,
            bathrooms: 1.5,
            pets: 'yes',
            image: 'https://tse4.mm.bing.net/th?id=OIP.rWSRUMe4x2Kx2MHAoYJ7fwHaEk&pid=Api&P=0',
            manager:'Mr. Dre'
    },
    {
            street: 'Ivy St',
            unit: '12',
            city: 'San Diego',
            state: 'Ohio',
            square_footage: 1200,
            price: '1400',
            bedrooms: 3,
            bathrooms: 1.5,
            pets: 'yes',
            image: 'https://tse1.mm.bing.net/th?id=OIP.Ps8W-H9iNNJLpz4WUmDIfgHaD5&pid=Api&P=0',
            manager:'Mr. Raymond'
    }
]

apartment2 = [
    {
        street: 'Vera Cruz Ave.',
            unit: '13',
            city: 'Golden Vally',
            state: 'Minnesota',
            square_footage: 1540,
            price: '1600',
            bedrooms: 3,
            bathrooms: 1.5,
            pets: 'yes',
            image: 'https://tse4.mm.bing.net/th?id=OIP.rWSRUMe4x2Kx2MHAoYJ7fwHaEk&pid=Api&P=0',
            manager:'Mr. Nguyen'
    },
    {
        street: 'Kappler Dr.',
            unit: '14',
            city: 'San Diego',
            state: 'California',
            square_footage: 1800,
            price: '1700',
            bedrooms: 3,
            bathrooms: 2,
            pets: 'yes',
            image: 'https://tse4.mm.bing.net/th?id=OIP.52sPusweQumBPeM6OXYSSAHaFj&pid=Api&P=0',
            manager:'Mr. Dre'
    },
    {
        street: 'Rockford Rd',
            unit: '15',
            city: 'San Diego',
            state: 'Ohio',
            square_footage: 1900,
            price: '1800',
            bedrooms: 3,
            bathrooms: 2,
            pets: 'yes',
            image: 'https://tse4.explicit.bing.net/th?id=OIP.KaScKx19DiyjcAGkb8ppXgHaEo&pid=Api&P=0',
            manager:'Mr. Raymond'
    }
]

apartment1.each do |apartment|
    user1.apartments.create(apartment)
    puts "creating: #{apartment}"
end
apartment2.each do |apartment|
    user2.apartments.create(apartment)
    puts "creating: #{apartment}"
end


