# Storage Types Research

Cloud storage can be divided into three main types: Block Storage, File Storage, and Object Storage. Each type is designed for different purposes.

| Storage Type       | Description                                                                | Primary Use Case                                                                  | Cloud Provider Example |
| ------------------ | -------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | ---------------------- |
| **Block Storage**  | Stores data in fixed-size blocks that can be accessed individually.        | Operating systems, databases, and virtual machine disks.                          | AWS EBS                |
| **File Storage**   | Stores files in folders and directories that can be shared across systems. | Shared files, documents, and applications that need a file system.                | AWS EFS                |
| **Object Storage** | Stores data as objects together with metadata and a unique identifier.     | Photos, videos, backups, documents, and other large amounts of unstructured data. | AWS S3                 |

## Why Object Storage is Suitable for the Client

Object Storage is a good choice for the photo-sharing application because it can store a large number of images without depending on the web server's local storage. It is also designed to handle large amounts of unstructured data such as photos, making it suitable for a system with millions of user-uploaded images.

