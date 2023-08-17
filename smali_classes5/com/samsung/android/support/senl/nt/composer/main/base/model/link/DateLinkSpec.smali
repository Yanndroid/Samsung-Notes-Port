.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;
.source "SourceFile"


# instance fields
.field public mEndDate:Ljava/util/Date;

.field public mStartDate:Ljava/util/Date;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mStartDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;->mEndDate:Ljava/util/Date;

    return-void
.end method
