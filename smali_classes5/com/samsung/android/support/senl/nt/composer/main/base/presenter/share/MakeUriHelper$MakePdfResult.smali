.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakePdfResult"
.end annotation


# instance fields
.field public mResultPath:Ljava/lang/String;

.field public mResultType:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->mResultPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->mResultPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->mResultType:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-object v0
.end method

.method public setResultPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->mResultPath:Ljava/lang/String;

    return-void
.end method

.method public setResultType(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->mResultType:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    return-void
.end method
