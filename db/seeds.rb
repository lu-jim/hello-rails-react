# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

Message.create([{ content: 'Hello Rails!' }, { content: 'Hola Rails!' },
                { content: 'Hallo Rails' }, { content: 'Bonjour Rails!' },
                { content: '今日は レイルス!' }])
