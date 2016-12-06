FROM ioinformatics/transmart-postgres

RUN /etc/init.d/postgresql start; while ! su postgres -c 'psql -c "ALTER USER postgres WITH PASSWORD '"'"'postgres'"'"'"'; do sleep 5; done
