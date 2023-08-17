.class public abstract Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

.field public static final TRANSACTION_internalCommand:I = 0x1

.field public static final TRANSACTION_internalCommandWithReturnValue:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
    .locals 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

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
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result p2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Message;

    :cond_4
    invoke-interface {p0, v0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
