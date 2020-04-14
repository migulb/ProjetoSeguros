Before do
    $driver.start_driver
    @login=Screen_TelaLogin.new()
    @seguro=Screen_CaminhoSeguro.new()
    @wait=WaitElement.new()
end

After do
    $driver.quit_driver
end