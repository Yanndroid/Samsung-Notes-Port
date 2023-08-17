.class public abstract Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.scloud.rpc.ISamsungCloudRPCCallback"

.field public static final TRANSACTION_onComplete:I = 0x3

.field public static final TRANSACTION_onProgress:I = 0x2

.field public static final TRANSACTION_onStart:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.scloud.rpc.ISamsungCloudRPCCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.scloud.rpc.ISamsungCloudRPCCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.scloud.rpc.ISamsungCloudRPCCallback"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;->onComplete(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;->onProgress(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;->onStart(Ljava/lang/String;)V

    goto :goto_1
.end method
