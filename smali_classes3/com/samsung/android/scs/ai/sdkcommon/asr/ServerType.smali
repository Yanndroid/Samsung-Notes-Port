.class public Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

.field private final isDefault:Z

.field private final typeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->isDefault:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->isDefault:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    iget-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    iget-object v3, p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public getFeature()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->isDefault:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerType{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", feature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDefault=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->isDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->feature:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->typeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->isDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
