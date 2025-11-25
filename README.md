# HERMES - Xsens MVN Analyze

Support package to interface the [Xsens IMU MoCap](https://www.movella.com/motion-capture/mvn-analyze) commercial system of Xsens/Movella in [HERMES](https://github.com/maximyudayev/hermes) via the [Network Streamer plugin](https://www.xsens.com/hubfs/Downloads/Manuals/MVN_real-time_network_streaming_protocol_specification.pdf).

> [!NOTE]
> Xsens MVN Analyze is a full-body system of wearable IMUs, and a receiver base station connected to a Windows PC, with a practical range of ~20 meters. Lost packets degrade fitting of the biomechanical model to the person. Ensure the person stays in range or the base station is moved around for this device.

> [!WARNING]
> Xsens MVN Analyze `<2024.*` had some bugs in the Network Streamer plugin, causing ~30-50% packet dropout. We suggest to use `>=2024.*`.

## Installation
Node available under the same HERMES namespace of `hermes.mvn` as `MvnAnalyzeProducer`. Follow [these instructions](https://base.movella.com/s/article/Network-Streamer-in-MVN-1611927767465) to turn on Network Streamer plugin within MVN Analyze.

### From PyPI
```bash
pip install pysio-hermes-mvn
```

### From source
```bash
git clone https://github.com/maximyudayev/hermes-mvn.git
pip install -e hermes-mvn
```

## Usage
Using the device follows the standard [configuration file specification](https://maximyudayev.github.io/hermes/) process of HERMES nodes.

Turn on Xsens MVN Analyze as for regular usage, place sensors on the person, calibrate the setup in the app, [activate Network Streamer](https://base.movella.com/s/article/Network-Streamer-in-MVN-1611927767465), launch HERMES. No need to record within MVN Analyze.

> [!IMPORTANT]
> Ensure "Send Paused" checkbox is checked in Network Streamer.

> [!IMPORTANT]
> Ensure that all checked checkboxes for desired modalities in Network Streamer of MVN Analyze are set to `True` in the HERMES config YAML file [like this](https://github.com/maximyudayev/hermes-mvn/blob/main/examples/mvn.yml#L62-L69).

## Citation
When using any parts of this repository outside of its intended use, please cite the parent project [HERMES](https://github.com/maximyudayev/hermes).
