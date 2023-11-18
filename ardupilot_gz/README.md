## Installing Build Dependencies

While DDS support in Ardupilot is mostly through git submodules, another tool needs to be available on your system: Micro XRCE DDS Gen.

- Install java 17
    https://www.oracle.com/java/technologies/downloads/#jdk17-mac

- Follow instructions [here](https://micro-xrce-dds.docs.eprosima.com/en/latest/installation.html#installing-the-micro-xrce-dds-gen-tool) to install the latest version of the generator using Ardupilot's mirror
    ```console
    git clone --recurse-submodules https://github.com/ardupilot/Micro-XRCE-DDS-Gen.git
    cd Micro-XRCE-DDS-Gen
    ./gradlew assemble
    ```

- Add the generator directory to $PATH.
    ```console
    # Add this to ~/.zshrc

    export PATH=$PATH:/your/path/to/Micro-XRCE-DDS-Gen/scripts
    ```
