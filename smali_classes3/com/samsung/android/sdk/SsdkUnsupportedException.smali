.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final DEVICE_NOT_SUPPORTED:I = 0x1

.field public static final SDK_VERSION_MISMATCH:I = 0x2

.field public static final VENDOR_NOT_SUPPORTED:I


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    iput-object p3, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    return v0
.end method
