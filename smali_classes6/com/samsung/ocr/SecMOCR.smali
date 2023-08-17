.class public Lcom/samsung/ocr/SecMOCR;
.super Lcom/samsung/android/ocr/MOCR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ocr/SecMOCR$ResultPage;,
        Lcom/samsung/ocr/SecMOCR$ResultBlock;,
        Lcom/samsung/ocr/SecMOCR$ResultLine;,
        Lcom/samsung/ocr/SecMOCR$ResultWord;,
        Lcom/samsung/ocr/SecMOCR$ResultChar;
    }
.end annotation


# static fields
.field public static final MOCR_LANG_AFRIKAANS:I = 0x28

.field public static final MOCR_LANG_ALBANIAN:I = 0x29

.field public static final MOCR_LANG_BASQUE:I = 0x1e

.field public static final MOCR_LANG_BULGARIAN:I = 0x24

.field public static final MOCR_LANG_CATALAN:I = 0xc

.field public static final MOCR_LANG_CHN_MIXED:I = 0x6

.field public static final MOCR_LANG_CHN_SIM:I = 0x7

.field public static final MOCR_LANG_CHN_TRD:I = 0x8

.field public static final MOCR_LANG_CROATIAN:I = 0xd

.field public static final MOCR_LANG_CZECH:I = 0xe

.field public static final MOCR_LANG_DANISH:I = 0xf

.field public static final MOCR_LANG_DUTCH:I = 0x11

.field public static final MOCR_LANG_END:I = 0x2b

.field public static final MOCR_LANG_ENG:I = 0x0

.field public static final MOCR_LANG_ESP:I = 0x4

.field public static final MOCR_LANG_ESTONIAN:I = 0x12

.field public static final MOCR_LANG_FINNISH:I = 0x13

.field public static final MOCR_LANG_FRA:I = 0x1

.field public static final MOCR_LANG_GALICIAN:I = 0x1f

.field public static final MOCR_LANG_GER:I = 0x2

.field public static final MOCR_LANG_HANGUL:I = 0x5

.field public static final MOCR_LANG_HUNGARIAN:I = 0x14

.field public static final MOCR_LANG_ICELANDIC:I = 0x20

.field public static final MOCR_LANG_INDONESIAN:I = 0x15

.field public static final MOCR_LANG_IRISH:I = 0x21

.field public static final MOCR_LANG_ITA:I = 0x3

.field public static final MOCR_LANG_JAPANESE:I = 0x9

.field public static final MOCR_LANG_LATVIAN:I = 0x16

.field public static final MOCR_LANG_LITHUANIAN:I = 0x17

.field public static final MOCR_LANG_MACEDONIAN:I = 0x2a

.field public static final MOCR_LANG_MALAY:I = 0x22

.field public static final MOCR_LANG_NORWEGIAN:I = 0x10

.field public static final MOCR_LANG_POLISH:I = 0x18

.field public static final MOCR_LANG_PORTUGUESE:I = 0xa

.field public static final MOCR_LANG_ROMANIAN:I = 0x19

.field public static final MOCR_LANG_RUSSIAN:I = 0x23

.field public static final MOCR_LANG_SERBIAN_CYR:I = 0x26

.field public static final MOCR_LANG_SLOVAK:I = 0x1a

.field public static final MOCR_LANG_SLOVENIAN:I = 0x1b

.field public static final MOCR_LANG_SWEDISH:I = 0x1c

.field public static final MOCR_LANG_TURKISH:I = 0xb

.field public static final MOCR_LANG_UKRAINIAN:I = 0x25

.field public static final MOCR_LANG_UZBEK_LAT:I = 0x27

.field public static final PIXEL_FORMAT_ARGB8888:I = 0x0

.field public static final PIXEL_FORMAT_NV21:I = 0x1

.field public static final PIXEL_FORMAT_RGBA8888:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SecMOCR"

.field private static volatile mSecMOCR:Lcom/samsung/ocr/SecMOCR; = null

.field private static mStrDBPath_Preload:Ljava/lang/String; = "/system/saiv/textrecognition/mocr/ocr_db/"


# instance fields
.field private final mAarVersion:Ljava/lang/String;

.field private mIsInitSuccess:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "mOCR.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/ocr/MOCR;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z

    const-string v0, "1.05"

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR;->mAarVersion:Ljava/lang/String;

    sget-object v0, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    const-string v1, "Create new mocr engine instance,aar version:1.05"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synchronized native MOCR_Close()V
.end method

.method private synchronized native MOCR_GetVersion()Ljava/lang/String;
.end method

.method private synchronized native MOCR_Init(Ljava/lang/String;[I)I
.end method

.method private synchronized native MOCR_RecognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I
.end method

.method private synchronized native MOCR_Recognize_Image([IIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I
.end method

.method private synchronized native MOCR_Recognize_Preview([BIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I
.end method

.method private declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ocr/SecMOCR;->MOCR_Close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static cvtRGB2RGBA([BII)[B
    .locals 3

    sget-object v0, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    const-string v1, "cvt format RGB2RGBA "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    new-array p1, p1, [B

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, p2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, p1, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static cvtResultPageToMOCRResult(FLcom/samsung/ocr/SecMOCR$ResultPage;Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 13

    if-eqz p1, :cond_8

    sget-object v0, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blockCount:I

    iput v0, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blockCount:I

    new-array v1, v0, [Lcom/samsung/android/ocr/MOCRResult$Block;

    iput-object v1, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blockCount:I

    if-ge v1, v2, :cond_8

    sget-object v2, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lineCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    new-instance v3, Lcom/samsung/android/ocr/MOCRResult$Block;

    invoke-direct {v3}, Lcom/samsung/android/ocr/MOCRResult$Block;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v3, v2, v1

    iget-object v4, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v5, v4, v1

    iget v5, v5, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lineCount:I

    iput v5, v3, Lcom/samsung/android/ocr/MOCRResult$Block;->lineCount:I

    aget-object v3, v2, v1

    aget-object v4, v4, v1

    iget v4, v4, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lineCount:I

    new-array v4, v4, [Lcom/samsung/android/ocr/MOCRResult$Line;

    iput-object v4, v3, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Point;

    iput-object v4, v2, Lcom/samsung/android/ocr/MOCRResult$Block;->bRect:[Landroid/graphics/Point;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->bRect:[Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v7, v6, v1

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultBlock;->blkCorner:[I

    mul-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p0

    float-to-int v7, v7

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/ocr/SecMOCR$ResultBlock;->blkCorner:[I

    add-int/lit8 v8, v8, 0x1

    aget v6, v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, p0

    float-to-int v6, v6

    invoke-direct {v5, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_2
    iget-object v4, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lineCount:I

    if-ge v2, v4, :cond_7

    iget-object v4, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    new-instance v5, Lcom/samsung/android/ocr/MOCRResult$Line;

    invoke-direct {v5}, Lcom/samsung/android/ocr/MOCRResult$Line;-><init>()V

    aput-object v5, v4, v2

    sget-object v4, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wordCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/samsung/ocr/SecMOCR$ResultLine;->wordCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v5, v4, v1

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v5, v5, v2

    iget-object v6, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v7, v6, v1

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/samsung/ocr/SecMOCR$ResultLine;->wordCount:I

    iput v7, v5, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    aget-object v5, v4, v1

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v5, v5, v2

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/samsung/ocr/SecMOCR$ResultLine;->wordCount:I

    new-array v6, v6, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v4, v4, v2

    new-array v5, v3, [Landroid/graphics/Point;

    iput-object v5, v4, Lcom/samsung/android/ocr/MOCRResult$Line;->lRect:[Landroid/graphics/Point;

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_2

    iget-object v5, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Line;->lRect:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v8, v7, v1

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultLine;->lCorner:[I

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, p0

    float-to-int v8, v8

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultLine;->lCorner:[I

    add-int/lit8 v9, v9, 0x1

    aget v7, v7, v9

    int-to-float v7, v7

    mul-float/2addr v7, p0

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v4, v0

    :goto_4
    iget-object v5, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/samsung/ocr/SecMOCR$ResultLine;->wordCount:I

    if-ge v4, v5, :cond_6

    iget-object v5, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    new-instance v6, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v6}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    aput-object v6, v5, v4

    iget-object v5, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v6, v5, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v6, v6, v4

    iget-object v7, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v8, v7, v1

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/samsung/ocr/SecMOCR$ResultWord;->charCount:I

    iput v8, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    aget-object v6, v5, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v6, v6, v4

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/samsung/ocr/SecMOCR$ResultWord;->charCount:I

    new-array v7, v7, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object v7, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v5, v5, v4

    new-array v6, v3, [Landroid/graphics/Point;

    iput-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    move v5, v0

    :goto_5
    if-ge v5, v3, :cond_3

    iget-object v6, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    iget-object v8, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v9, v8, v1

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultWord;->wCorner:[I

    mul-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, p0

    float-to-int v9, v9

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultWord;->wCorner:[I

    add-int/lit8 v10, v10, 0x1

    aget v8, v8, v10

    int-to-float v8, v8

    mul-float/2addr v8, p0

    float-to-int v8, v8

    invoke-direct {v7, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v0

    :goto_6
    iget-object v7, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v8, v7, v1

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/samsung/ocr/SecMOCR$ResultWord;->charCount:I

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/samsung/ocr/SecMOCR$ResultWord;->chars:[Lcom/samsung/ocr/SecMOCR$ResultChar;

    aget-object v7, v7, v6

    iget-char v7, v7, Lcom/samsung/ocr/SecMOCR$ResultChar;->unicode:C

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    new-instance v8, Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-direct {v8}, Lcom/samsung/android/ocr/MOCRResult$Char;-><init>()V

    aput-object v8, v7, v6

    iget-object v7, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v8, v7, v1

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v8, v8, v6

    iget-object v9, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/samsung/ocr/SecMOCR$ResultWord;->chars:[Lcom/samsung/ocr/SecMOCR$ResultChar;

    aget-object v9, v9, v6

    iget-char v9, v9, Lcom/samsung/ocr/SecMOCR$ResultChar;->unicode:C

    iput v9, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v7, v7, v6

    new-array v8, v3, [Landroid/graphics/Point;

    iput-object v8, v7, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    move v7, v0

    :goto_7
    if-ge v7, v3, :cond_4

    iget-object v8, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    new-instance v9, Landroid/graphics/Point;

    iget-object v10, p1, Lcom/samsung/ocr/SecMOCR$ResultPage;->blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

    aget-object v11, v10, v1

    iget-object v11, v11, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v11, v11, v2

    iget-object v11, v11, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/samsung/ocr/SecMOCR$ResultWord;->chars:[Lcom/samsung/ocr/SecMOCR$ResultChar;

    aget-object v11, v11, v6

    iget-object v11, v11, Lcom/samsung/ocr/SecMOCR$ResultChar;->cCorner:[I

    mul-int/lit8 v12, v7, 0x2

    aget v11, v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, p0

    float-to-int v11, v11

    aget-object v10, v10, v1

    iget-object v10, v10, Lcom/samsung/ocr/SecMOCR$ResultBlock;->lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/samsung/ocr/SecMOCR$ResultLine;->words:[Lcom/samsung/ocr/SecMOCR$ResultWord;

    aget-object v10, v10, v4

    iget-object v10, v10, Lcom/samsung/ocr/SecMOCR$ResultWord;->chars:[Lcom/samsung/ocr/SecMOCR$ResultChar;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/samsung/ocr/SecMOCR$ResultChar;->cCorner:[I

    add-int/lit8 v12, v12, 0x1

    aget v10, v10, v12

    int-to-float v10, v10

    mul-float/2addr v10, p0

    float-to-int v10, v10

    invoke-direct {v9, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_5
    iget-object v6, p2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static getInstance()Lcom/samsung/ocr/SecMOCR;
    .locals 2

    sget-object v0, Lcom/samsung/ocr/SecMOCR;->mSecMOCR:Lcom/samsung/ocr/SecMOCR;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/ocr/SecMOCR;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/ocr/SecMOCR;->mSecMOCR:Lcom/samsung/ocr/SecMOCR;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/ocr/SecMOCR;

    invoke-direct {v1}, Lcom/samsung/ocr/SecMOCR;-><init>()V

    sput-object v1, Lcom/samsung/ocr/SecMOCR;->mSecMOCR:Lcom/samsung/ocr/SecMOCR;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/ocr/SecMOCR;->mSecMOCR:Lcom/samsung/ocr/SecMOCR;

    return-object v0
.end method

.method private declared-synchronized initialize(Ljava/lang/String;[I)I
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/ocr/SecMOCR;->MOCR_Init(Ljava/lang/String;[I)I

    move-result p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/samsung/ocr/SecMOCR;->mStrDBPath_Preload:Ljava/lang/String;

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initialize([I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/ocr/SecMOCR;->mStrDBPath_Preload:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/samsung/ocr/SecMOCR;->MOCR_Init(Ljava/lang/String;[I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/ocr/SecMOCR;->TAG:Ljava/lang/String;

    const-string v1, "recognizeImage start_1.05"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/ocr/SecMOCR;->mIsInitSuccess:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string p1, "recognizeImage fail. Not initialize engine!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    if-ltz p8, :cond_1

    const/4 v1, 0x2

    if-gt p8, v1, :cond_1

    :try_start_1
    invoke-direct/range {p0 .. p9}, Lcom/samsung/ocr/SecMOCR;->MOCR_RecognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "recognizeImage fail. Not support Image format:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cvtToLang(I)I
    .locals 2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x46

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/16 p1, 0x25

    return p1

    :pswitch_1
    const/16 p1, 0x26

    return p1

    :pswitch_2
    const/16 p1, 0x23

    return p1

    :pswitch_3
    const/16 p1, 0x2a

    return p1

    :pswitch_4
    const/16 p1, 0x24

    return p1

    :pswitch_5
    return v0

    :pswitch_6
    const/16 p1, 0x27

    return p1

    :pswitch_7
    const/16 p1, 0xb

    return p1

    :pswitch_8
    const/16 p1, 0x1c

    return p1

    :pswitch_9
    const/16 p1, 0x1b

    return p1

    :pswitch_a
    const/16 p1, 0x1a

    return p1

    :pswitch_b
    const/4 p1, 0x4

    return p1

    :pswitch_c
    const/16 p1, 0x19

    return p1

    :pswitch_d
    const/16 p1, 0xa

    return p1

    :pswitch_e
    const/16 p1, 0x18

    return p1

    :pswitch_f
    const/16 p1, 0x10

    return p1

    :pswitch_10
    const/16 p1, 0x22

    return p1

    :pswitch_11
    const/16 p1, 0x17

    return p1

    :pswitch_12
    const/16 p1, 0x16

    return p1

    :pswitch_13
    const/4 p1, 0x3

    return p1

    :pswitch_14
    const/16 p1, 0x21

    return p1

    :pswitch_15
    const/16 p1, 0x15

    return p1

    :pswitch_16
    const/16 p1, 0x20

    return p1

    :pswitch_17
    const/16 p1, 0x14

    return p1

    :pswitch_18
    const/4 p1, 0x2

    return p1

    :pswitch_19
    const/16 p1, 0x1f

    return p1

    :pswitch_1a
    const/4 p1, 0x1

    return p1

    :pswitch_1b
    const/16 p1, 0x13

    return p1

    :pswitch_1c
    const/16 p1, 0x12

    return p1

    :pswitch_1d
    const/16 p1, 0x11

    return p1

    :pswitch_1e
    const/16 p1, 0xf

    return p1

    :pswitch_1f
    const/16 p1, 0xe

    return p1

    :pswitch_20
    const/16 p1, 0xd

    return p1

    :pswitch_21
    const/16 p1, 0xc

    return p1

    :pswitch_22
    const/16 p1, 0x1e

    return p1

    :pswitch_23
    const/16 p1, 0x29

    return p1

    :pswitch_24
    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x9

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1

    :cond_2
    const/4 p1, 0x5

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deinit()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ocr/SecMOCR;->close()V

    return-void
.end method

.method public detect([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;[Landroid/graphics/Point;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;[Landroid/graphics/Point;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectText([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detectText_ARGB(Lcom/samsung/android/ocr/MOCRImage;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use run_ARGB API when using Engine Type MOCR"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detect_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use run_ARGB API when using Engine Type MOCR"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateReqLangArray(I)[I
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array v0, v0, [I

    aput p1, v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v1

    aput p1, v2, v0

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/ocr/SecMOCR;->MOCR_GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize without lang not supported for MOCR engine type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/ocr/SecMOCR;->generateReqLangArray(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/ocr/SecMOCR;->initialize([I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Lcom/samsung/ocr/SecMOCRStatus;->cvtStatus(I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Initialize without lang not supported for MOCR engine type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/ocr/SecMOCR;->generateReqLangArray(I)[I

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ocr/SecMOCR;->initialize(Ljava/lang/String;[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Lcom/samsung/ocr/SecMOCRStatus;->cvtStatus(I)I

    move-result p1

    return p1
.end method

.method public run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 11

    new-instance v10, Lcom/samsung/ocr/SecMOCR$ResultPage;

    invoke-direct {v10}, Lcom/samsung/ocr/SecMOCR$ResultPage;-><init>()V

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGB:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    move-object v1, p4

    if-ne v1, v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/ocr/SecMOCR;->cvtRGB2RGBA([BII)[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, p2, -0x1

    add-int/lit8 v7, p3, -0x1

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGBA8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result v8

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/ocr/SecMOCR;->recognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, p2, -0x1

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/ocr/SecMOCR;->recognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v2, p5

    invoke-static {v1, v10, v2}, Lcom/samsung/ocr/SecMOCR;->cvtResultPageToMOCRResult(FLcom/samsung/ocr/SecMOCR$ResultPage;Lcom/samsung/android/ocr/MOCRResult$Page;)V

    invoke-static {v0}, Lcom/samsung/ocr/SecMOCRStatus;->cvtStatus(I)I

    move-result v0

    return v0
.end method

.method public run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 11

    new-instance v10, Lcom/samsung/ocr/SecMOCR$ResultPage;

    invoke-direct {v10}, Lcom/samsung/ocr/SecMOCR$ResultPage;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getImageFormat()I

    move-result v8

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGB:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result v0

    if-ne v8, v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getByte()[B

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/samsung/ocr/SecMOCR;->cvtRGB2RGBA([BII)[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v3, -0x1

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGBA8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result v8

    move-object v0, p0

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/ocr/SecMOCR;->recognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getByte()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v3, -0x1

    move-object v0, p0

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/ocr/SecMOCR;->recognizeImage([BIIIIIIILcom/samsung/ocr/SecMOCR$ResultPage;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getScale()F

    move-result p1

    invoke-static {p1, v10, p2}, Lcom/samsung/ocr/SecMOCR;->cvtResultPageToMOCRResult(FLcom/samsung/ocr/SecMOCR$ResultPage;Lcom/samsung/android/ocr/MOCRResult$Page;)V

    invoke-static {v0}, Lcom/samsung/ocr/SecMOCRStatus;->cvtStatus(I)I

    move-result p1

    return p1
.end method

.method public set_options(Lcom/samsung/android/ocr/MOCROptions;)V
    .locals 0

    return-void
.end method
