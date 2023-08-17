.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$UndoRedoStatus;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Mode;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    }
.end annotation


# static fields
.field public static final DEFAULT_BODYTEXT_FONT_SIZE_DELTA:I = -0x80000000

.field private static sIsFeatureChecked:Z = false

.field private static sIsLogEnabled:Z = false

.field private static sSdkVersionCode:I

.field private static sWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final WDOC_TEMP_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandle:I

.field private mTempDirPath:Ljava/lang/String;

.field private mTempFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const-string v1, "Model_SpenWNote"

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->LOG_TAG:Ljava/lang/String;

    const-string v1, "/SPenSDK30/WdocTemp"

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WDOC_TEMP_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const-string v1, "Model_SpenWNote"

    iput-object v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->LOG_TAG:Ljava/lang/String;

    const-string v1, "/SPenSDK30/WdocTemp"

    iput-object v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WDOC_TEMP_PATH:Ljava/lang/String;

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->init(Landroid/content/Context;)V

    move-object v1, p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->preConstruct(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_constructLoad(ILjava/lang/String;Ljava/lang/String;IIZZZ)I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->postConstruct()V

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_TYPE : It does not correspond to the WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_VERSION : Unsupported version of WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenWNote : errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_CACHE : Cache is invalid.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_PASSWORD : the password is wrong. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    .locals 10

    move-object v8, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const-string v9, "Model_SpenWNote"

    iput-object v9, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->LOG_TAG:Ljava/lang/String;

    const-string v1, "/SPenSDK30/WdocTemp"

    iput-object v1, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WDOC_TEMP_PATH:Ljava/lang/String;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->init(Landroid/content/Context;)V

    iget v1, v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, p0

    move-object v3, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_constructNew(ILjava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "] is not exist"

    const-string v3, "["

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SPenSDK30"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote : E_FILE_CAN_NOT_OPEN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote : E_FILE_NOT_FOUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const-string v1, "Model_SpenWNote"

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->LOG_TAG:Ljava/lang/String;

    const-string v1, "/SPenSDK30/WdocTemp"

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WDOC_TEMP_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->init(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->preConstruct(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    if-eqz p3, :cond_0

    move-object p2, p3

    :cond_0
    iget p3, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_init_coedit(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->postConstruct()V

    if-nez p1, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_4

    const/16 p2, 0x13

    if-eq p1, p2, :cond_3

    const/16 p2, 0x18

    if-eq p1, p2, :cond_2

    const/16 p2, 0x19

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_UNSUPPORTED_TYPE : It does not correspond to the WNote file format. : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_UNSUPPORTED_VERSION : Unsupported version of WNote file format. : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWNote : errno("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_INVALID_CACHE : Cache is invalid.: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenWNote("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed.: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_INVALID_PASSWORD : the password is wrong. : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const-string v1, "Model_SpenWNote"

    iput-object v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->LOG_TAG:Ljava/lang/String;

    const-string v1, "/SPenSDK30/WdocTemp"

    iput-object v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WDOC_TEMP_PATH:Ljava/lang/String;

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    iput-object v0, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->init(Landroid/content/Context;)V

    move-object v0, p2

    move-object v1, p3

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->preConstruct(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget v1, v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_constructLoad(ILjava/lang/String;Ljava/lang/String;IIZZZ)I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->postConstruct()V

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_TYPE : It does not correspond to the WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_VERSION : Unsupported version of WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenWNote : errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_CACHE : Cache is invalid.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_PASSWORD : the password is wrong. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native WNote_appendObjectSpan(ILcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)Z
.end method

.method private native WNote_appendPage1(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_appendPageList(I[I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_appendPageWithHistory(IIIZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_attachFile(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native WNote_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private native WNote_beginHistoryGroup(ILjava/lang/String;)Z
.end method

.method private native WNote_changePageMode(II)Z
.end method

.method private native WNote_clearChangedFlag(I)V
.end method

.method private native WNote_clearHistory(I)V
.end method

.method private native WNote_clearObjectSpan(I)Z
.end method

.method private native WNote_close(IZ)Z
.end method

.method private static native WNote_combineLastUndo(II)Z
.end method

.method private native WNote_commitHistory(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z
.end method

.method private native WNote_constructLoad(ILjava/lang/String;Ljava/lang/String;IIZZZ)I
.end method

.method private native WNote_constructNew(ILjava/lang/String;Ljava/lang/String;IIIZ)I
.end method

.method private native WNote_copyPage(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_deregisterCursorEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)Z
.end method

.method private native WNote_deregisterHistoryEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)Z
.end method

.method private native WNote_deregisterObjectEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)Z
.end method

.method private native WNote_deregisterObjectIndexMovedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)Z
.end method

.method private native WNote_deregisterObjectSelectedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)Z
.end method

.method private native WNote_deregisterPageEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)Z
.end method

.method private native WNote_deregisterTextEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)Z
.end method

.method private native WNote_deregisterVoiceDataEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)Z
.end method

.method private native WNote_detachFile(ILjava/lang/String;)Z
.end method

.method private native WNote_discard(I)Z
.end method

.method private native WNote_endHistoryGroup(I)Z
.end method

.method private native WNote_finalize(I)V
.end method

.method private native WNote_findObjectSpan(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_findVoiceName(ILjava/lang/String;)Z
.end method

.method private static native WNote_getAllObjectCount(I)I
.end method

.method private static native WNote_getAllVoiceData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_getAttachedFile(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native WNote_getAttachedFileCount(I)I
.end method

.method private static native WNote_getBodyObjectCount(II)I
.end method

.method private static native WNote_getBodyObjectList(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_getBodyText(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end method

.method private native WNote_getBodyTextFontSizeDelta(I)I
.end method

.method private native WNote_getBoundFilesSize(I)I
.end method

.method private native WNote_getCoeditXmlDataWeight(I)I
.end method

.method private static native WNote_getDefaultBodyTextLimit()I
.end method

.method private static native WNote_getDefaultTextLimit()I
.end method

.method private static native WNote_getDisplayCreatedTime(I)J
.end method

.method private static native WNote_getDisplayModifiedTime(I)J
.end method

.method private native WNote_getDocumentType(I)I
.end method

.method private native WNote_getFixedBackgroundTheme(I)I
.end method

.method private native WNote_getFixedFont(I)Ljava/lang/String;
.end method

.method private native WNote_getFixedTextDirection(I)I
.end method

.method private native WNote_getHeight(I)I
.end method

.method private native WNote_getInternalDirectory(I)Ljava/lang/String;
.end method

.method private native WNote_getInternalTempDirectory(I)Ljava/lang/String;
.end method

.method private native WNote_getLastEditedPageIndex(I)I
.end method

.method private native WNote_getLastPenInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
.end method

.method private static native WNote_getLastRecognizedDataModifiedTime(I)J
.end method

.method private native WNote_getNewVoiceName(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native WNote_getOrientation(I)I
.end method

.method private native WNote_getOwnerId(I)Ljava/lang/String;
.end method

.method private native WNote_getPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_getPageCount(I)I
.end method

.method private native WNote_getPageDefaultHeight(I)I
.end method

.method private native WNote_getPageDefaultWidth(I)I
.end method

.method private static native WNote_getPageHorizontalPadding(I)I
.end method

.method private native WNote_getPageIdByIndex(II)Ljava/lang/String;
.end method

.method private native WNote_getPageIndex(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
.end method

.method private native WNote_getPageIndexById(ILjava/lang/String;)I
.end method

.method private native WNote_getPageLayoutHeight(I)I
.end method

.method private native WNote_getPageLayoutMarginBottom(I)I
.end method

.method private native WNote_getPageLayoutMarginLeft(I)I
.end method

.method private native WNote_getPageLayoutMarginRight(I)I
.end method

.method private native WNote_getPageLayoutMarginTop(I)I
.end method

.method private native WNote_getPageLayoutWidth(I)I
.end method

.method private native WNote_getPageList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_getPageMode(I)I
.end method

.method private static native WNote_getPageObjectCount(II)I
.end method

.method private static native WNote_getPageVerticalPadding(I)I
.end method

.method private static native WNote_getRedoStatus(I)I
.end method

.method private native WNote_getSelectedObject(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_getServerCheckPoint(I)J
.end method

.method private static native WNote_getTimeLimitForUndoRedo(I)J
.end method

.method private native WNote_getTitle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end method

.method private native WNote_getUndoLimit(I)I
.end method

.method private static native WNote_getUndoStatus(I)I
.end method

.method private static native WNote_getVoiceData(II)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
.end method

.method private native WNote_getWidth(I)I
.end method

.method private native WNote_hasAllContentFiles(I)Z
.end method

.method private native WNote_hasAttachedFile(ILjava/lang/String;)Z
.end method

.method private static native WNote_hasBodyObject(II)Z
.end method

.method private static native WNote_hasObject(II)Z
.end method

.method private native WNote_hasSnapSavedData(I)Z
.end method

.method private native WNote_init_coedit(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native WNote_initializeCoeditData(I)Z
.end method

.method private native WNote_insertPage1(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_insertPage2(IIII)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method private native WNote_insertPageList(II[I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation
.end method

.method private static native WNote_insertVoiceData(IILcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z
.end method

.method private native WNote_invertBackgroundColor(IZ)Z
.end method

.method private native WNote_isBackgroundColorInverted(I)Z
.end method

.method private native WNote_isChanged(I)Z
.end method

.method private native WNote_isChangedOnlyThumbnail(I)Z
.end method

.method private native WNote_isClosed(I)Z
.end method

.method private native WNote_isCoeditMode(I)Z
.end method

.method private native WNote_isCoediting(I)Z
.end method

.method private native WNote_isCorruptedFileInfoFound(I)Z
.end method

.method private native WNote_isEditingByCoedit(I)Z
.end method

.method private native WNote_isGroupingHistory(I)Z
.end method

.method private native WNote_isObjectInRedo(II)Z
.end method

.method private native WNote_isObjectInUndo(II)Z
.end method

.method private native WNote_isPDFReaderMode(I)Z
.end method

.method private static native WNote_isRedoHeavy(I)Z
.end method

.method private native WNote_isRedoable(I)Z
.end method

.method private native WNote_isSame(II)Z
.end method

.method private static native WNote_isUndoHeavy(I)Z
.end method

.method private native WNote_isUndoable(I)Z
.end method

.method private static native WNote_makeFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native WNote_movePageIndex(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z
.end method

.method private native WNote_quickSave(ILjava/lang/String;)Z
.end method

.method private native WNote_quickSave2(ILjava/lang/String;Z)Z
.end method

.method private native WNote_redo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native WNote_redoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native WNote_registerCursorEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)Z
.end method

.method private native WNote_registerFile(ILjava/lang/String;)I
.end method

.method private native WNote_registerHistoryEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)Z
.end method

.method private native WNote_registerObjectEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)Z
.end method

.method private native WNote_registerObjectIndexMovedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)Z
.end method

.method private native WNote_registerObjectSelectedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)Z
.end method

.method private native WNote_registerPageEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)Z
.end method

.method private native WNote_registerTextEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)Z
.end method

.method private native WNote_registerVoiceDataEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)Z
.end method

.method private native WNote_reload(I)Z
.end method

.method private native WNote_removeObjectSpan(ILcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)Z
.end method

.method private native WNote_removePage(II)Z
.end method

.method private native WNote_removePageList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native WNote_removeVoiceData(II)Z
.end method

.method private native WNote_restoreObjectList(ILjava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WNote_saveAsDirectory(ILjava/lang/String;)Z
.end method

.method private native WNote_saveAsDirectory2(ILjava/lang/String;Z)Z
.end method

.method private native WNote_saveAsFile(ILjava/lang/String;)Z
.end method

.method private native WNote_saveAsFile2(ILjava/lang/String;Z)Z
.end method

.method private native WNote_selectObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native WNote_selectObject2(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WNote_setBackgroundColor(ILjava/util/ArrayList;IZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;IZ)Z"
        }
    .end annotation
.end method

.method private native WNote_setBodyTextFontSizeDelta(II)Z
.end method

.method private static native WNote_setDefaultBodyTextLimit(I)Z
.end method

.method private static native WNote_setDefaultTextLimit(I)Z
.end method

.method private static native WNote_setDisplayCreatedTime(IJ)Z
.end method

.method private static native WNote_setDisplayModifiedTime(IJ)Z
.end method

.method private native WNote_setDocumentType(II)Z
.end method

.method private native WNote_setEditingByCoedit(IZ)V
.end method

.method private native WNote_setFixedBackgroundTheme(II)Z
.end method

.method private native WNote_setFixedFont(ILjava/lang/String;)Z
.end method

.method private native WNote_setFixedTextDirection(II)Z
.end method

.method private native WNote_setLastPenInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method

.method private native WNote_setObjectDefaultFlowLayoutType(II)Z
.end method

.method private native WNote_setOwnerId(ILjava/lang/String;)Z
.end method

.method private native WNote_setPDFReaderMode(IZ)Z
.end method

.method private native WNote_setPageDefaultHeight(II)Z
.end method

.method private native WNote_setPageDefaultWidth(II)Z
.end method

.method private static native WNote_setPageHorizontalPadding(II)Z
.end method

.method private static native WNote_setPageVerticalPadding(II)Z
.end method

.method private native WNote_setServerCheckPoint(IJ)Z
.end method

.method private static native WNote_setTimeLimitForUndoRedo(IJ)Z
.end method

.method private native WNote_setUndoLimit(II)V
.end method

.method private native WNote_snapSave(IZ)Z
.end method

.method private native WNote_transferObject(IILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
.end method

.method private native WNote_transferObject2(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native WNote_undo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native WNote_undoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private declared-synchronized checkTempDirectory()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Model_SpenWNote"

    const-string v1, "Fail to create temp directory."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to create temp directory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private decryptWdoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/util/WLockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string v0, "Model_SpenWNote"

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p2, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "decryptSdoc() - fail to delete temporary file."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "decryptSdoc() - decrypt fail."

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "decryptSdoc() - unlock fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "decryptSdoc() - fail to unlock file"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultBodyTextLimit()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDefaultBodyTextLimit()I

    move-result v0

    return v0
.end method

.method public static getDefaultTextLimit()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDefaultTextLimit()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model_SpenWNote"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->sSdkVersionCode:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SPenSDK30/WdocTemp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempDirPath:Ljava/lang/String;

    return-void
.end method

.method public static makeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_makeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeFile : errno("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private postConstruct()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Model_SpenWNote"

    const-string v1, "load() - fail to delete temporary file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mTempFilePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private preConstruct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "]"

    const-string v2, "Model_SpenWNote"

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preConstruct() - the file isn\'t exist.["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    if-eq v3, v4, :cond_1

    const-string p1, "preConstruct() - normal"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preConstruct() - Locked file. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->isEncrypted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->checkTempDirectory()V

    :try_start_0
    const-string v0, "preConstruct - step 1"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->decryptWdoc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preConstruct - decrypt fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_2
    const-string p1, "preConstruct() - open locked file with invalid password"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method private static safeRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "] to ["

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeRenameTo() - Cannot rename origin dest file ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-ne p0, v1, :cond_4

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deleteFile(Ljava/io/File;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "safeRenameTo() - Cannot rename temp file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeRenameTo() - Fail to get current path File. ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    const-string p0, "WNote"

    const-string p1, "safeRenameTo() - Invalid argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultBodyTextLimit(I)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setDefaultBodyTextLimit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDefaultTextLimit(I)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setDefaultTextLimit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendObjectSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_appendObjectSpan(ILcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_appendPage1(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_appendPageWithHistory(IIIZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public appendPage(IIZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_appendPageWithHistory(IIIZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public appendPageList([I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_appendPageList(I[I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public attachFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_attachFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public beginHistoryGroup()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_beginHistoryGroup(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginHistoryGroup(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_beginHistoryGroup(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public changePageMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_changePageMode(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_clearChangedFlag(I)V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_clearHistory(I)V

    return-void
.end method

.method public clearObjectSpan()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_clearObjectSpan(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public close(Z)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_close(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close : errno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    return-void
.end method

.method public combineLastUndo(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_combineLastUndo(II)Z

    move-result p1

    return p1
.end method

.method public commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_commitHistory(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_copyPage(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public deregisterCursorEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterCursorEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterHistoryEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterObjectEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectIndexMovedEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterObjectIndexMovedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectSelectedEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterObjectSelectedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterPageEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterPageEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterTextEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterTextEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_deregisterVoiceDataEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public detachFile(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_detachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public discard()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_discard(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWNote("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discard : errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    return-void
.end method

.method public endHistoryGroup()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_endHistoryGroup(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget p1, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 3

    :try_start_0
    const-string v0, "Model_SpenWNote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findObjectSpan(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_findObjectSpan(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public findVoiceName(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_findVoiceName(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAllObjectCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getAllObjectCount(I)I

    move-result v0

    return v0
.end method

.method public getAttachedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getAttachedFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getAttachedFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getAttachedFileCount(I)I

    move-result v0

    return v0
.end method

.method public getBodyObjectCount()I
    .locals 1

    const v0, 0x1ffff

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyObjectCount(I)I

    move-result v0

    return v0
.end method

.method public getBodyObjectCount(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getBodyObjectCount(II)I

    move-result p1

    return p1
.end method

.method public getBodyObjectList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getBodyObjectList(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getBodyText(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    return-object v0
.end method

.method public getBodyTextFontSizeDelta()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getBodyTextFontSizeDelta(I)I

    move-result v0

    return v0
.end method

.method public getBoundFilesSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getBoundFilesSize(I)I

    move-result v0

    return v0
.end method

.method public getCoeditXmlDataWeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getCoeditXmlDataWeight(I)I

    move-result v0

    return v0
.end method

.method public getContinueUndoRedoBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayCreatedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDisplayCreatedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDisplayModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDocumentType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is invalid."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFixedBackgroundTheme()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getFixedBackgroundTheme(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_LIGHT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_MAX:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background Theme ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is invalid."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFixedFont()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getFixedFont(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedTextDirection()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getFixedTextDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_LTR:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_MAX:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text Direction ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is invalid."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getHeight(I)I

    move-result v0

    return v0
.end method

.method public getInternalDirectory()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getInternalDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalTempDirectory()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getInternalTempDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getLastEditedPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getLastPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 6

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getLastPenInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeToSizeLevel(Landroid/content/Context;Ljava/lang/String;FII)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :cond_0
    return-object v0
.end method

.method public getLastRecognizedDataModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getLastRecognizedDataModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getNewVoiceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getOrientation(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getOwnerId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageCount(I)I

    move-result v0

    return v0
.end method

.method public getPageDefaultHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageDefaultHeight(I)I

    move-result v0

    return v0
.end method

.method public getPageDefaultWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageDefaultWidth(I)I

    move-result v0

    return v0
.end method

.method public getPageHorizontalPadding()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageHorizontalPadding(I)I

    move-result v0

    return v0
.end method

.method public getPageIdByIndex(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageIdByIndex(II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getPageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageIndex(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I

    move-result p1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getPageIndexById(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageIndexById(ILjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getPageLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutHeight(I)I

    move-result v0

    return v0
.end method

.method public getPageLayoutMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutMarginBottom(I)I

    move-result v0

    return v0
.end method

.method public getPageLayoutMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutMarginLeft(I)I

    move-result v0

    return v0
.end method

.method public getPageLayoutMarginRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutMarginRight(I)I

    move-result v0

    return v0
.end method

.method public getPageLayoutMarginTop()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutMarginTop(I)I

    move-result v0

    return v0
.end method

.method public getPageLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageLayoutWidth(I)I

    move-result v0

    return v0
.end method

.method public getPageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageMode(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getPageObjectCount()I
    .locals 1

    const v0, 0x1ffff

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageObjectCount(I)I

    move-result v0

    return v0
.end method

.method public getPageObjectCount(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageObjectCount(II)I

    move-result p1

    return p1
.end method

.method public getPageVerticalPadding()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getPageVerticalPadding(I)I

    move-result v0

    return v0
.end method

.method public getRedoStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getRedoStatus(I)I

    move-result v0

    return v0
.end method

.method public getSelectedObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getSelectedObject(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getServerCheckPoint()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getServerCheckPoint(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeLimitForUndoRedo()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getTimeLimitForUndoRedo(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getTitle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    return-object v0
.end method

.method public getUndoLimit()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getUndoLimit(I)I

    move-result v0

    return v0
.end method

.method public getUndoStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getUndoStatus(I)I

    move-result v0

    return v0
.end method

.method public getVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getVoiceData(II)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getVoiceDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getAllVoiceData(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getWidth(I)I

    move-result v0

    return v0
.end method

.method public hasAllContentFiles()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_hasAllContentFiles(I)Z

    move-result v0

    return v0
.end method

.method public hasAttachedFile(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_hasAttachedFile(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasBodyObject(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_hasBodyObject(II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasObject(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_hasObject(II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasSnapSavedData()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_hasSnapSavedData(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    return v0
.end method

.method public initializeCoeditData()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_initializeCoeditData(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public insertPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_insertPage1(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public insertPage(III)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_insertPage2(IIII)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public insertPageList(I[I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_insertPageList(II[I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public insertVoiceData(ILcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_insertVoiceData(IILcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public invertBackgroundColor(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_invertBackgroundColor(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isBackgroundColorInverted()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isBackgroundColorInverted(I)Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public isChangedOnlyThumbnail()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isChangedOnlyThumbnail(I)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isClosed(I)Z

    move-result v0

    return v0
.end method

.method public isCoeditMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isCoeditMode(I)Z

    move-result v0

    return v0
.end method

.method public isCoediting()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isCoediting(I)Z

    move-result v0

    return v0
.end method

.method public isCorruptedFileInfoFound()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isCorruptedFileInfoFound(I)Z

    move-result v0

    return v0
.end method

.method public isEditingByCoedit()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isEditingByCoedit(I)Z

    move-result v0

    return v0
.end method

.method public isGroupingHistory()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isGroupingHistory(I)Z

    move-result v0

    return v0
.end method

.method public isObjectInRedo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isObjectInRedo(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isObjectInUndo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isObjectInUndo(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPDFReaderMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isPDFReaderMode(I)Z

    move-result v0

    return v0
.end method

.method public isRedoHeavy()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isRedoHeavy(I)Z

    move-result v0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isRedoable(I)Z

    move-result v0

    return v0
.end method

.method public isSame(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isSame(II)Z

    move-result p1

    return p1
.end method

.method public isUndoHeavy()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isUndoHeavy(I)Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_isUndoable(I)Z

    move-result v0

    return v0
.end method

.method public movePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_movePageIndex(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public quickSave(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_quickSave(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_BOUND_FILE_NOT_FOUND : Can not find bound file. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quickSave : errno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public quickSave(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_quickSave2(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_BOUND_FILE_NOT_FOUND : Can not find bound file. : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWNote("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed.: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quickSave : errno("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_redo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_redoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public registerCursorEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerCursorEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$CursorEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerFile(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerFile(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerHistoryEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerObjectEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectIndexMovedEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerObjectIndexMovedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectIndexMovedEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectSelectedEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerObjectSelectedEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectSelectedEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerPageEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerPageEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerTextEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerTextEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_registerVoiceDataEventListener(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_reload(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload : errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeObjectSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_removeObjectSpan(ILcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_removePage(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removePageList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_removePageList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeVoiceData(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_removeVoiceData(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_restoreObjectList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_getDocumentType(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    const-string v3, ") is already closed. : "

    const-string v4, "SpenWNote("

    const-string v5, ") "

    const-string v6, "save : errno("

    const/16 v7, 0x18

    const/16 v8, 0x13

    const/16 v9, 0xb

    const/16 v10, 0xa

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->checkTempDirectory()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ".tmp"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v11, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsFile(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v11

    if-eq v11, v10, :cond_2

    if-eq v11, v9, :cond_2

    if-eq v11, v8, :cond_1

    if-eq v11, v7, :cond_0

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/util/WLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->safeRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-ne p2, v1, :cond_4

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deleteFile(Ljava/io/File;)V

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "saveAsFile2() - Fail to lock file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "saveAsFile2() - invalid argument2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget p2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsDirectory(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    if-eq p1, v10, :cond_9

    if-eq p1, v9, :cond_9

    if-eq p1, v8, :cond_8

    if-eq p1, v7, :cond_7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    :goto_1
    return-void
.end method

.method public saveAsDirectory(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsDirectory(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAsDirectory : errno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public saveAsDirectory(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsDirectory2(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_BOUND_FILE_NOT_FOUND : Can not find bound file. : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWNote("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed.: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveAsDirectory : errno("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public saveAsFile(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_BOUND_FILE_NOT_FOUND : Can not find bound file.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAsFile : errno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public saveAsFile(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_saveAsFile2(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_BOUND_FILE_NOT_FOUND : Can not find bound file. : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWNote("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed.: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveAsFile : errno("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_selectObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public selectObject(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_selectObject2(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setBackgroundColor(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public setBackgroundColor(Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;IZ)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setBackgroundColor(ILjava/util/ArrayList;IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBodyTextFontSizeDelta(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setBodyTextFontSizeDelta(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setContinueUndoRedoBlockSize(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setDisplayCreatedTime(J)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setDisplayCreatedTime(IJ)Z

    move-result p1

    return p1
.end method

.method public setDisplayModifiedTime(J)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setDisplayModifiedTime(IJ)Z

    move-result p1

    return p1
.end method

.method public setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setDocumentType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setEditingByCoedit(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setEditingByCoedit(IZ)V

    return-void
.end method

.method public setFixedBackgroundTheme(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setFixedBackgroundTheme(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFixedFont(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setFixedFont(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFixedTextDirection(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setFixedTextDirection(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isDpSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToPxSize(Ljava/lang/String;III)F

    move-result v0

    :goto_0
    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setLastPenInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setObjectDefaultFlowLayoutType(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setObjectDefaultFlowLayoutType(II)Z

    move-result p1

    return p1
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setOwnerId(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPDFReaderMode(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setPDFReaderMode(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPageDefaultHeight(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setPageDefaultHeight(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPageDefaultWidth(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setPageDefaultWidth(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPageHorizontalPadding(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setPageHorizontalPadding(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPageVerticalPadding(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setPageVerticalPadding(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setServerCheckPoint(J)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setServerCheckPoint(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTimeLimitForUndoRedo(J)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setTimeLimitForUndoRedo(IJ)Z

    move-result p1

    return p1
.end method

.method public setUndoLimit(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_setUndoLimit(II)V

    return-void
.end method

.method public snapSave(Z)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_snapSave(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_BOUND_FILE_NOT_FOUND : Can not find bound file. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenWNote("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapSave : errno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public transferObject(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_transferObject(IILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result p1

    return p1
.end method

.method public transferObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_transferObject2(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    return p1
.end method

.method public undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_undo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->WNote_undoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method
