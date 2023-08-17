.class public abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocPathConvertParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams<",
        "TT;>;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocPathConvertParams;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPassword()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->mFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;->mBuilderClass:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPassword(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
