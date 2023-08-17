.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorCode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "# cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException;->mErrorCode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException;->mErrorCode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    return-object v0
.end method
