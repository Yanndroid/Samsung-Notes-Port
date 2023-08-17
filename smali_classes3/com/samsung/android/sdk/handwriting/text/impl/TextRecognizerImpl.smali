.class public Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;,
        Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$ResultImpl;
    }
.end annotation


# static fields
.field private static final FILECHECKER:[B

.field private static final NULL_STRING:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TextRecognizerImpl"


# instance fields
.field private mData:[[B

.field private mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

.field private mEventListener:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

.field private mRecognitionType:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

.field private mXstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[F>;"
        }
    .end annotation
.end field

.field private mYstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[F>;"
        }
    .end annotation
.end field

.field private mbAddStrokeDirectly:Z

.field private mbInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->FILECHECKER:[B

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->NULL_STRING:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x41t
        0x4dt
        0x53t
        0x55t
        0x4et
        0x47t
        0x5ft
        0x4dt
        0x48t
        0x57t
        0x52t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbAddStrokeDirectly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mRecognitionType:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->create(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;)Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    return-object p0
.end method

.method private declared-synchronized addStroke([F[FIZ)V
    .locals 2

    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {p4, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->addStroke([F[FI)V

    goto :goto_0

    :cond_0
    new-array p4, p3, [F

    new-array v0, p3, [F

    const/4 v1, 0x0

    invoke-static {p1, v1, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addStroke([F[FZ)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    array-length v0, p1

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->addStroke([F[FI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDBVersion(Ljava/io/InputStream;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getFileSize(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const/16 v3, 0x8

    new-array v4, v3, [B

    sub-int/2addr v2, v3

    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    const-wide/16 v7, 0x8

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eq p1, v3, :cond_3

    return-wide v0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v3, :cond_4

    aget-byte v2, v4, p1

    int-to-long v5, v2

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    mul-int/lit8 v2, p1, 0x8

    shl-long/2addr v5, v2

    add-long/2addr v0, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "yyyy/MM/dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initialize inputstream] DB Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private getDataFileBuffer(Ljava/lang/String;)[[B
    .locals 3

    const-string v0, "ko_KR-hj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ko_KR"

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->isSupportedLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getResourcesByBuffer(Ljava/lang/String;)[[B

    move-result-object p1

    return-object p1
.end method

.method private getDataFilePath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "ko_KR-hj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ko_KR"

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->isSupportedLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static getFileSize(Ljava/io/InputStream;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDB : file size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static getInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const-string v0, "ko_KR-hj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ko_KR"

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to open: vidata/hwr_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vidata/hwr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open: vidata/hwr_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private getStandardLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "kor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "eng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "chn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p1, "ko_KR"

    return-object p1

    :pswitch_1
    const-string p1, "en_US"

    return-object p1

    :pswitch_2
    const-string/jumbo p1, "zh_CN"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x180a9 -> :sswitch_2
        0x188de -> :sswitch_1
        0x19f8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextNativeLibraryName()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "SDKRecognitionText.spensdk.samsung"

    return-object v0

    :cond_0
    const-string v0, "SDKRecognitionText"

    return-object v0
.end method

.method private isValidDB(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getFileSize(Ljava/io/InputStream;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xc

    new-array v3, v2, [B

    add-int/lit8 v1, v1, -0x14

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    const-wide/16 v6, 0x14

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eq p1, v2, :cond_3

    return v0

    :cond_3
    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_5

    aget-byte v1, v3, p1

    sget-object v4, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->FILECHECKER:[B

    aget-byte v4, v4, p1

    if-eq v1, v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private loadDB(Ljava/io/File;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->loadDB(Ljava/io/InputStream;I)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    return v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw p1

    :cond_3
    :goto_2
    return v0
.end method

.method private loadDB(Ljava/io/InputStream;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getFileSize(Ljava/io/InputStream;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    new-array v3, v1, [B

    aput-object v3, v2, p2

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    const/4 v1, 0x0

    aput-object v1, p1, p2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setLanguage] cancel recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setStopAsync()V

    const-string v1, "[setLanguage] set language"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[setLanguage] ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[setLanguage] set language done"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Set Language error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setLanguage([B[BLjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setLanguage] cancel recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setStopAsync()V

    const-string v1, "[setLanguage] set language"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setLanguage([B[BLjava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[setLanguage] ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[setLanguage] set language done"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Set Language error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setLanguageByBuffer(Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getDataFileBuffer(Ljava/lang/String;)[[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Main DB buffer is null!"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB Buffer[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguage([B[BLjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Buffer[1] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v4

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v0, v1

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguage([B[BLjava/lang/String;)V

    :goto_1
    return v4

    :cond_3
    :goto_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "invalid DB buffer"

    goto :goto_0
.end method

.method private setLanguageByPath(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getDataFilePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB Path[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v0, v0, v3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Path[1] = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "invalid DB path"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid DB path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized addStroke([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbAddStrokeDirectly:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->addStroke([F[FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Language Manager is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Language Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStroke([F[FI)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbAddStrokeDirectly:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->addStroke([F[FIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Language Manager is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Language Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStroke([I[I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    array-length v1, p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->addStroke([I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Language Manager is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Language Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStroke([I[II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->addStroke([I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Language Manager is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Language Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setStopAsync()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized clearStrokes()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbAddStrokeDirectly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->clearStrokes()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Language Manager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Language Manager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public create(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "TextRecognizer create - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getTextNativeLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/handwriting/common/HwrLibraryLoader;->loadTextLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    new-instance v1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;-><init>(Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-direct {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->init()J

    new-instance v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setAsyncMode(Z)V

    const-string p1, "TextRecognizer create - finish"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string p2, "Failed to load library"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized dispose()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disposed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setStopAsync()V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    if-eqz v2, :cond_2

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mData:[[B

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disposed Done!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDBVersion(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getDBVersion(Ljava/io/InputStream;)J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-wide v0
.end method

.method public getDBVersion(Ljava/io/File;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getDBVersion(Ljava/io/InputStream;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-wide v0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    return-wide v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw p1

    :cond_3
    :goto_2
    return-wide v0
.end method

.method public getDBVersion(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->getDBVersion(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "yyyy/MM/dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initialize JNI] DB Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Language Manager is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const-string/jumbo v1, "supported languages array is null or zero length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Language Manager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidDB(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getStandardLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->getInputStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->isValidDB(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public isValidDB(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->isValidDB(Ljava/io/InputStream;)Z

    move-result p1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public isValidDB(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->isValidDB(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized recognize()Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->recognize()I

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$ResultImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$ResultImpl;-><init>(Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Language Manager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Language Manager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStroke(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbAddStrokeDirectly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->removeStroke(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Language Manager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Language Manager is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public request()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->recognize()I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsyncMode(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Async mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setAsyncMode(Z)V

    return-void

    :cond_0
    const-string p1, "Engine is not initialized"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBaseline(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setBaseline(II)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLanguage : input language code : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLanguage : default locale : ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguageByBuffer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Read DB file by path because it cannot be read by buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguageByPath(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Language Manager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguageData(Ljava/lang/String;[B[B)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLanguageData : input language code : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLanguageData : default locale : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->setLanguage([B[BLjava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string p2, "Engine is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListener(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;->setListener(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setListener(Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl$TextRecognizerImplListener;)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositiveScaleIndicator(FFF)V
    .locals 0

    return-void
.end method

.method public setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Text mode is invalid"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setRecogMode(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRecognitionMode] ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[setRecognitionMode] set recognition mode done"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Language Manager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Text type is invalid"

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mRecognitionType:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->URL:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setRecogType(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognition type is changed to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setRecogType(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRecognitionType] ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string p1, "[setRecognitionType] set recognition type done"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid recognition type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Language Manager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stroke mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setStrokeMode(Z)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserDictionary(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mbInitialized:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->mEngine:Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerLib;->setUserDictionary([Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "[setUserDictionary] Fail to set user dictionary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Engine is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
