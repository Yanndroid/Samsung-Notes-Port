.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSearchData"
.end annotation


# static fields
.field public static final SEARCH_TYPE_HANDWRITING_TEXTBOX:I = 0x2

.field public static final SEARCH_TYPE_NONE:I = 0x0

.field public static final SEARCH_TYPE_TEXT:I = 0x1

.field public static final SEARCH_TYPE_VOICE_TITLE:I = 0x3

.field public static final SEARCH_TYPE_WEB_TITLE:I = 0x4


# instance fields
.field public beginPos:I

.field public contentIndex:I

.field public endPos:I

.field public subIndex:I

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->text:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->contentIndex:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->subIndex:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->beginPos:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;->endPos:I

    return-void
.end method
