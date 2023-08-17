.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public bFoundMainHtml:Z

.field public destDir:Ljava/lang/String;

.field public fontCount:I

.field public htmlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$MediaContent;",
            ">;"
        }
    .end annotation
.end field

.field public imageCount:I

.field public mcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$MediaContent;",
            ">;"
        }
    .end annotation
.end field

.field public replaceHtmlSrc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public srcListToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$MediaContent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->fontCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->imageCount:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->bFoundMainHtml:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->mcList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->destDir:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->replaceHtmlSrc:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->htmlList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/MhtmlExtractor$Data;->srcListToReplace:Ljava/util/HashMap;

    return-void
.end method
