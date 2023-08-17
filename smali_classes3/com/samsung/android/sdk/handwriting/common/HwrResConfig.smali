.class public Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final HWRSDK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.handwriting"

.field public static final LIBNAME_GESTURE:Ljava/lang/String; = "libSPenGesture.so"

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USE_32BIT_LIBRARY:I = 0x1

.field public static final USE_64BIT_LIBRARY:I = 0x2

.field public static final USE_SYSTEM_DEFAULT:I

.field private static mLibraryAbi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;->FILE_SEPARATOR:Ljava/lang/String;

    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;->PATH_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;->mLibraryAbi:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryAbi()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;->mLibraryAbi:I

    return v0
.end method

.method public static setLibraryAbi(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/handwriting/common/HwrResConfig;->mLibraryAbi:I

    return-void
.end method
