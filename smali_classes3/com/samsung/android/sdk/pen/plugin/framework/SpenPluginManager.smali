.class public Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;
    }
.end annotation


# static fields
.field private static final BINARY_TYPE_INDEX:I = 0x4

.field private static final BINARY_TYPE_JAVA:I = 0x0

.field private static final BINARY_TYPE_NATIVE:I = 0x1

.field private static final BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

.field private static final CLASS_NAME_INDEX:I = 0xd

.field private static final EXTRA_INFO_INDEX:I = 0xa

.field private static final FOCUSED_ICON_IMAGE_URI_INDEX:I = 0x9

.field private static final HAS_PRIVATE_KEY_INDEX:I = 0x5

.field private static final ICON_IMAGE_URI_INDEX:I = 0x6

.field private static final INTERFACE_NAME_INDEX:I = 0x2

.field private static final INTERFACE_VERSION_INDEX:I = 0x3

.field private static final PACKAGE_NAME_INDEX:I = 0xc

.field private static final PLUGIN_NAME_URI_INDEX:I = 0xb

.field private static final PRESET_ICON_IMAGE_URI_INDEX:I = 0x8

.field private static final SELECTED_ICON_IMAGE_URI_INDEX:I = 0x7

.field private static final TYPE_INDEX:I = 0x0

.field private static final VERSION_INDEX:I = 0x1

.field private static mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;


# instance fields
.field private mBuiltInPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIs64:Z

.field private mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

.field private final mLoadedPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "ObjectRuntime"

    const-string v2, "1"

    const-string v3, "SpenObjectRuntimeInterface"

    const-string v4, "1"

    const-string v5, "java"

    const-string v6, "defaultIconImageURI"

    const-string v7, "0"

    const-string v8, "selectedIconImageURI"

    const-string v9, "defaultIconImageURI"

    const-string v10, "defaultIconImageURI"

    const-string v11, "extraInfo"

    const-string v12, "Video"

    const-string v13, "com.samsung.android.sdk.pen.objectruntime.preload"

    const-string v14, "Video"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "Recognizer"

    const-string v4, "1"

    const-string v5, "SpenRecognizerInterface"

    const-string v6, "1"

    const-string v7, "java"

    const-string v8, "0"

    const-string v9, "iconImageUri"

    const-string v10, "selectedIconImageUri"

    const-string v11, "presetIconImageUri"

    const-string v12, "focusedIconImageUri"

    const-string v13, "extraInfo"

    const-string v14, "SpenRecognizer"

    const-string v15, "com.samsung.android.sdk.pen.recogengine.preload"

    const-string v16, "SpenRecognizerPlugin"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
    .locals 18

    const-class v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    monitor-enter v1

    if-eqz p0, :cond_d

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-nez v0, :cond_c

    new-instance v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    new-instance v2, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->BUILTIN_PLUGIN_LIST:[[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-ge v4, v2, :cond_3

    aget-object v7, v0, v4

    array-length v8, v7

    if-eq v8, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;-><init>()V

    aget-object v8, v7, v3

    iput-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    aget-object v8, v7, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    aget-object v8, v7, v16

    iput-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    aget-object v8, v7, v15

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceVersion:I

    aget-object v8, v7, v14

    aget-object v13, v7, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    aget-object v12, v7, v12

    iput-object v12, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    aget-object v11, v7, v11

    iput-object v11, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    aget-object v10, v7, v10

    iput-object v10, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->presetIconImageUri:Ljava/lang/String;

    aget-object v9, v7, v9

    iput-object v9, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->focusedIconImageUri:Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v9, v7, v9

    iput-object v9, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v9, v7, v9

    iput-object v9, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    const/16 v9, 0xc

    aget-object v9, v7, v9

    iput-object v9, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v7, v7, v9

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v6, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    goto :goto_1

    :cond_1
    iput v3, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    :goto_1
    sget-object v6, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "plugin.ini"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v6

    goto :goto_4

    :catch_0
    :try_start_2
    const-string v2, "PluginManager"

    const-string v4, "Fail to read Plugin List of App"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    :goto_4
    if-ne v2, v6, :cond_8

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    invoke-direct {v7}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;-><init>()V

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    if-eq v8, v5, :cond_4

    goto :goto_5

    :cond_4
    aget-object v8, v4, v3

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    aget-object v8, v4, v16

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    aget-object v8, v4, v15

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceVersion:I

    aget-object v8, v4, v14

    aget-object v17, v4, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    aget-object v5, v4, v12

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    aget-object v5, v4, v11

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->selectedIconImageUri:Ljava/lang/String;

    aget-object v5, v4, v10

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->presetIconImageUri:Ljava/lang/String;

    aget-object v5, v4, v9

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->focusedIconImageUri:Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v9, v4, v5

    iput-object v9, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v5, v4, v9

    iput-object v5, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v9, v4, v5

    iput-object v9, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v4, v4, v9

    iput-object v4, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    const-string v4, "native"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v6, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    goto :goto_6

    :cond_5
    iput v3, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    :goto_6
    sget-object v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v7, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v8, v8, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    sget-object v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x9

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "PluginManager"

    const-string v3, "I/O error occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "E_INVALID_STATE : Fail to update ArrayList for BuiltInPluginList of App"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "PluginManager"

    const-string v3, "I/O error occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "E_INVALID_STATE : Fail to update ArrayList for BuiltInPluginList of App"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_8
    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_6
    const-string v0, "PluginManager"

    const-string v3, "I/O error occurs"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_9
    const-string v0, "PluginManager"

    const-string v2, "Constructor is completed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "E_INVALID_STATE : Fail to create ArrayList for BuiltInPluginList"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "E_INVALID_STATE : Fail to create JniPluginManager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_a
    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mInstance:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_d
    :try_start_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_b
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNativeHandle(Ljava/lang/Object;)I
    .locals 8

    const-string v0, "PluginManager"

    const-string v1, "getNativeHandle()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNativeHandle() is completed. returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, v0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNativeHandle_64(Ljava/lang/Object;)J
    .locals 8

    const-string v0, "PluginManager"

    const-string v1, "getNativeHandle()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNativeHandle() is completed. returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPluginInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;
    .locals 5

    const-string v0, "PluginManager"

    const-string v1, "getPluginInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "getPluginInfo() returns false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'uuid\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPluginList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "PluginManager"

    const-string v1, "getPluginList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "getPluginList() is completed."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "all"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'type\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKeyHint(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->getPrivateKeyHint()Ljava/lang/String;

    move-result-object v0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadPlugin(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const-string v0, "PluginManager"

    const-string v1, "loadPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder;->build(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_8

    new-instance v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;-><init>()V

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->type:Ljava/lang/String;

    iget v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    iput v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    iget-object v6, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iput-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iput-object p2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->dummyObject:Ljava/lang/Object;

    const-wide/16 v6, 0x0

    if-ne v5, v4, :cond_4

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    goto :goto_2

    :cond_4
    iput-wide v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_2
    iput-object v1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {p2, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->unlock(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-wide v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    cmp-long p3, v3, v6

    if-eqz p3, :cond_6

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    invoke-virtual {p2, v3, v4, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(JLandroid/content/Context;)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    long-to-int p3, v3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(ILandroid/content/Context;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onLoad(Landroid/content/Context;)V

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'key\' is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    const-string p1, "PluginManager"

    const-string p2, "loadPlugin() is completed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : Unable to Use loadPlugin by null JniPluginManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : Unable to Use loadPlugin by null Activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const-string v0, "PluginManager"

    const-string v1, "loadPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mBuiltInPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder;->build(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_8

    new-instance v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;-><init>()V

    iget-object v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->type:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->type:Ljava/lang/String;

    iget v5, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->binaryType:I

    iput v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    iget-object v6, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    iput-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    iput-object p2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->dummyObject:Ljava/lang/Object;

    const-wide/16 v6, 0x0

    if-ne v5, v4, :cond_4

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    goto :goto_2

    :cond_4
    iput-wide v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_2
    iput-object v1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->classLoader:Ljava/lang/ClassLoader;

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {p2, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->unlock(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-wide v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    cmp-long p3, v3, v6

    if-eqz p3, :cond_6

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    invoke-virtual {p2, v3, v4, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(JLandroid/content/Context;)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    long-to-int p3, v3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onLoad(ILandroid/content/Context;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onLoad(Landroid/content/Context;)V

    move-object p1, v0

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;->getNativeHandle()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'key\' is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    const-string p1, "PluginManager"

    const-string p2, "loadPlugin() is completed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : Unable to Use loadPlugin by null JniPluginManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : Unable to Use loadPlugin by null Context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;)V
    .locals 2

    const-string v0, "PluginManager"

    const-string/jumbo v1, "setListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setPluginListener() is completed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'listener\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unloadPlugin(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "PluginManager"

    const-string/jumbo v1, "unloadPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    const-string v1, "E_INVALID_ARG : proxy handler of object is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v2, "PluginManager"

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->className:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/DoubleClassLoaderProxyBuilder$DoubleClassLoaderInvocationHandler;->instance:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->binaryType:I

    if-ne v0, v6, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mIs64:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onUnload(J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mJniPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;

    iget-wide v0, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->nativeHandle:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/plugin/framework/JniPluginManager;->onUnload(I)V

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;->onUnload()V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->mLoadedPluginList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, v5, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginObject;->object:Ljava/lang/Object;

    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "PluginManager"

    if-eqz v2, :cond_5

    const-string/jumbo v0, "unloadPlugin() is completed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v0, "unloadPlugin() returns false"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : Data to unload does not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'object\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : Unable to Use unloadPlugin by null JniPluginManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
