#!/usr/bin/env kotlin

import org.jetbrains.kotlin.org.apache.commons.codec.binary.Base64
import java.io.File

val appsJson = File("apps.json")
val base64 = Base64(true).encode(appsJson.readBytes())
File("apps.json.base64").writeBytes(base64)

