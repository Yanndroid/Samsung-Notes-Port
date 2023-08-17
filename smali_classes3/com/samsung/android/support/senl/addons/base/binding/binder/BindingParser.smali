.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000267B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ0\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J<\u0010#\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010!\u001a\u00020\"H\u0002JD\u0010\'\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0002JL\u0010(\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00042\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0002JL\u0010-\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010.\u001a\u00020/H\u0002J`\u00100\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"2\n\u00101\u001a\u000602j\u0002`32\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J.\u00104\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u00105\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;",
        "",
        "()V",
        "ATTR_BINDID",
        "",
        "ATTR_ID_NAME",
        "ATTR_LAYOUT_NAME",
        "ATTR_PROPERTY",
        "BIND_TAG",
        "DELIMITER_RESOURCE_ID",
        "NAME_SPACE_ANDROID",
        "TAG",
        "TAG_BIND",
        "TAG_INCLUDE",
        "TAG_INNER_LAYOUT",
        "TAG_VIEW",
        "TAG_VIEWMODEL",
        "TAG_VIEWSTUB",
        "makeBindCommand",
        "",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;",
        "parser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "out",
        "",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "parseBinding",
        "context",
        "Landroid/content/Context;",
        "layoutId",
        "",
        "linkedResId",
        "keyGenerator",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
        "parseInclude",
        "Landroid/content/res/XmlResourceParser;",
        "binds",
        "includes",
        "parseView",
        "parseViewAttribute",
        "target",
        "outV",
        "outInclude",
        "rootResId",
        "parseViewAttributeFromBuffer",
        "bufferedReader",
        "Ljava/io/BufferedReader;",
        "parseViewAttributeTag",
        "stringBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "parseViewStub",
        "releaseParseViewAttribute",
        "ParseData",
        "ViewKeyGenerator",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ATTR_BINDID:Ljava/lang/String; = "bindId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ATTR_ID_NAME:Ljava/lang/String; = "id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ATTR_LAYOUT_NAME:Ljava/lang/String; = "layout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ATTR_PROPERTY:Ljava/lang/String; = "property"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BIND_TAG:Ljava/lang/String; = "bind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DELIMITER_RESOURCE_ID:Ljava/lang/String; = "@"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NAME_SPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_BIND:Ljava/lang/String; = "Bind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_INCLUDE:Ljava/lang/String; = "Include"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_INNER_LAYOUT:Ljava/lang/String; = "include"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_VIEW:Ljava/lang/String; = "View"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_VIEWMODEL:Ljava/lang/String; = "ViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_VIEWSTUB:Ljava/lang/String; = "ViewStub"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;

    const-string v0, "BindingParser"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final makeBindCommand(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "property"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "bindId"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewId()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewKey()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMVmId()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewBind;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final parseBinding(Landroid/content/Context;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;"
        }
    .end annotation

    const-string v0, "error : "

    if-nez p4, :cond_0

    new-instance p4, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;

    invoke-direct {p4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;-><init>()V

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string v1, "context.resources.getLayout(layoutId)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "include"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseInclude(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V

    goto :goto_1

    :cond_2
    const-string v2, "ViewStub"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, v8, p4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseViewStub(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseView(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Ljava/util/List;ILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V

    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v8
.end method

.method private final parseInclude(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "layout"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "http://schemas.android.com/apk/res/android"

    invoke-interface {p2, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->getViewId()I

    move-result v5

    if-ne v5, p2, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v4, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found bind infor for include : id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-direct {p0, p1, v0, p2, p5}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseBinding(Landroid/content/Context;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/2addr p4, v2

    if-eqz p4, :cond_5

    if-lez v3, :cond_4

    if-eqz p2, :cond_4

    new-instance p4, Lcom/samsung/android/support/senl/addons/base/binding/binder/IncludeBind;

    invoke-direct {p4, p2, p1, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IncludeBind;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object p4, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not generated include bind"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private final parseView(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Ljava/util/List;ILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;I",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "@"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse view : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : id = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : attr = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-interface {v0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "value"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseViewAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final parseViewAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;II",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            ")V"
        }
    .end annotation

    const-string v1, "error : "

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "raw"

    move-object v4, p2

    invoke-virtual {v2, p2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v4, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object v11, v12

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseViewAttributeFromBuffer(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;Ljava/io/BufferedReader;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_8
    invoke-static {v12, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_c
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final parseViewAttributeFromBuffer(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;Ljava/io/BufferedReader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;II",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    new-instance v12, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;

    invoke-direct {v12}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;-><init>()V

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "parser"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move-object v13, p0

    goto :goto_1

    :cond_0
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, p0

    invoke-direct {p0, v11, v12}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->releaseParseViewAttribute(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;)V

    goto :goto_1

    :cond_1
    move-object v13, p0

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseViewAttributeTag(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;Ljava/lang/StringBuilder;Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;)V

    :goto_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    move-object v13, p0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final parseViewAttributeTag(Landroid/content/Context;Ljava/util/List;Ljava/util/List;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;Ljava/lang/StringBuilder;Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;II",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            "Ljava/lang/StringBuilder;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;",
            ")V"
        }
    .end annotation

    invoke-interface {p8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parser.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p9, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMName(Ljava/lang/String;)V

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "View"

    const-string v4, "Include"

    const-string v5, "id"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "ViewModel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p8, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "parser.getAttributeValue(null, ATTR_ID_NAME)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p9, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMVmId(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :sswitch_2
    const-string p1, "Bind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewId()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p9, p8, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->makeBindCommand(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p9, p8, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->makeBindCommand(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p8, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMViewId(I)V

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewId()I

    move-result p1

    const/16 p2, 0x7c

    const/16 p3, 0x2f

    if-ne p1, p4, :cond_4

    if-eqz p5, :cond_4

    const-string p1, "root view id is changed to parent : "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewId()I

    move-result p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p5}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMViewId(I)V

    :cond_4
    invoke-virtual {p6}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;->generate()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMViewKey(I)V

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMType(Ljava/lang/String;)V

    const-string/jumbo p1, "view : "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewId()I

    move-result p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMViewKey()I

    move-result p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28fe1378 -> :sswitch_3
        0x1f985d -> :sswitch_2
        0x28aec5 -> :sswitch_1
        0x18afcf64 -> :sswitch_0
    .end sparse-switch
.end method

.method private final parseViewStub(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/List;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
            ")V"
        }
    .end annotation

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v1, v4, p4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseBinding(Landroid/content/Context;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "id"

    invoke-interface {p2, v0, p4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance p4, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p4, p2, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewStubBind;-><init>(II)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->TAG:Ljava/lang/String;

    const-string p4, "could not generated viewstub bind"

    invoke-static {p2, p4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method private final releaseParseViewAttribute(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;)V
    .locals 1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "parser.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMViewId(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->getMName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->setMVmId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final parseBinding(Landroid/content/Context;I)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseBinding(Landroid/content/Context;IILcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
