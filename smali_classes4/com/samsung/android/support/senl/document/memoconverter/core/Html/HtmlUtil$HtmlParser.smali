.class Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil$HtmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlParser"
.end annotation


# static fields
.field private static final schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method
