webtalk_init -webtalk_dir /home/alicemare/Documents/HDL/lab8/lab8_1_1/lab8_1_1.hw/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Nov 16 21:33:22 2018" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "Vivado v2018.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2258646" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "labtool" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "ceaf83ec1c0851518b2ca6c3a600af03" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "4f2946cb-d4f0-4139-b4a6-a9166c469da3" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "1" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.1 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2198.924 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "3.000 GB" -context "user_environment"
webtalk_register_client -client labtool
webtalk_add_data -client labtool -key chain -value "13631093" -context "labtool\\usage"
webtalk_add_data -client labtool -key pgmcnt -value "01:00:00" -context "labtool\\usage"
webtalk_add_data -client labtool -key cable -value "Digilent/Nexys4DDR/15000000:" -context "labtool\\usage"
webtalk_transmit -clientid 3459459673 -regid "" -xml /home/alicemare/Documents/HDL/lab8/lab8_1_1/lab8_1_1.hw/webtalk/usage_statistics_ext_labtool.xml -html /home/alicemare/Documents/HDL/lab8/lab8_1_1/lab8_1_1.hw/webtalk/usage_statistics_ext_labtool.html -wdm /home/alicemare/Documents/HDL/lab8/lab8_1_1/lab8_1_1.hw/webtalk/usage_statistics_ext_labtool.wdm -intro "<H3>LABTOOL Usage Report</H3><BR>"
webtalk_terminate
