.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebClip"
.end annotation


# instance fields
.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;->mUrl:Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->mType:I

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;->mUrl:Ljava/lang/String;

    return-object v0
.end method
