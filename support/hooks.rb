Before do
    driver.start_driver
    driver.manage.timeouts.implicit_wait = 10
end

After do |scenario|
    binary_shot = driver.screenshots_as(:base64)

    temp_shot = "logs/temp_shot.png"

    File.open(temp_shot, "wb") do |f|
        f.write(Base64.decode64(binary_shot).force_enconding("UTF-8"))
    end

    Allure.add_attachment(
        name: "screenshot",
        type: Allure::ContentType::PNG,
        source: File.open(temp_shot),
    )
    driver.quir_driver3
end