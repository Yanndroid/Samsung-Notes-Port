.class public Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;
.super Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final mObject:Ljava/lang/Object;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public open(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mPath:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mObject:Ljava/lang/Object;

    return-object p1
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_2

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/wdoc/WdocTextStaticParser;->mPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getBodyTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method
