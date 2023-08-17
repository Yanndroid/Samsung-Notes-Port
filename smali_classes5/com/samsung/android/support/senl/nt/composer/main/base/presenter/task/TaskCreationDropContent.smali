.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackupPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskCreationDropContent"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mBackupPath:Ljava/lang/String;

    return-void
.end method

.method private convertObjectToDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->hasStrokeType(Ljava/util/List;)Z

    move-result v0

    const-string v11, ""

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string v1, "convertObjectToDropContent# hasStrokeType is true."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->getContainerSpannableString(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v12, [Ljava/lang/CharSequence;

    aput-object v11, v1, v13

    aput-object v0, v1, v14

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/CharSequence;

    aput-object v11, v2, v13

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v14

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v11

    move-object v1, v0

    :goto_0
    iget-object v2, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object v6, v0

    move-object/from16 v16, v1

    move v5, v13

    :goto_1
    if-ge v5, v15, :cond_d

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertObjectToDropContent# type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v15, -0x1

    if-ge v5, v2, :cond_1

    move v3, v14

    goto :goto_2

    :cond_1
    move v3, v13

    :goto_2
    const/16 v17, 0x0

    const/4 v2, 0x3

    if-ne v0, v12, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;->handleText(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    :goto_3
    move v14, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_4
    move-object/from16 v20, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    goto/16 :goto_7

    :cond_2
    const/16 v14, 0xa

    if-ne v0, v14, :cond_4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {v7, v8, v10, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->getAudioClipDataContentUri(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_3
    move-object/from16 v0, v17

    :goto_5
    move v14, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    goto :goto_7

    :cond_4
    const/16 v14, 0xd

    if-ne v0, v14, :cond_5

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->getWebSpannableString(Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/16 v14, 0x11

    if-ne v0, v14, :cond_6

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    if-eq v0, v2, :cond_8

    const/16 v14, 0xe

    if-ne v0, v14, :cond_7

    goto :goto_6

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertObjectToDropContent# The type is not support. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v5

    move-object v3, v6

    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_8
    :goto_6
    invoke-static {v8, v10, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move v14, v3

    move v3, v5

    move/from16 v18, v5

    move-object/from16 v5, p3

    move-object/from16 v19, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->getImageSpannableString(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Z)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_4

    :goto_7
    if-eqz v17, :cond_9

    new-array v0, v12, [Ljava/lang/CharSequence;

    aput-object v16, v0, v13

    const/4 v1, 0x1

    aput-object v17, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/CharSequence;

    move-object/from16 v3, v19

    aput-object v3, v2, v13

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v16, v0

    move-object v6, v2

    goto :goto_b

    :cond_9
    move-object/from16 v3, v19

    const/4 v1, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v16, v4, v13

    aput-object v0, v4, v1

    if-eqz v14, :cond_a

    const-string v5, "\n"

    goto :goto_8

    :cond_a
    move-object v5, v11

    :goto_8
    aput-object v5, v4, v12

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v3, v2, v13

    aput-object v0, v2, v1

    if-eqz v14, :cond_b

    const-string v0, "<br>\n"

    goto :goto_9

    :cond_b
    move-object v0, v11

    :goto_9
    aput-object v0, v2, v12

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v6, v0

    move-object/from16 v16, v4

    goto :goto_b

    :cond_c
    :goto_a
    move-object v6, v3

    :goto_b
    add-int/lit8 v5, v18, 0x1

    move v14, v1

    goto/16 :goto_1

    :cond_d
    move-object v3, v6

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipDataBackupPath;->getClipDataBackupPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img src="

    const-string v2, "<img style=\"max-width: 100%;\" src="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->htmlText:Ljava/lang/String;

    return-void
.end method

.method private convertTextToDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;-><init>()V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    invoke-direct {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setConverter(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;->handleText(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipDataBackupPath;->getClipDataBackupPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "<img src="

    const-string p4, "<img style=\"max-width: 100%;\" src="

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->htmlText:Ljava/lang/String;

    return-void
.end method

.method private copyObjectSpanText(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;->findObjectSpan(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p2, "copyObjectSpanText# fail to find object span"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-static {p2, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p2

    iget-object v1, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p1, p2, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aput p1, p2, v0

    iput-object p2, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->selection:[I

    const/4 p1, 0x3

    iput p1, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    return-void
.end method

.method private copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 3

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p2, "copyText# getText() is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p2

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v2, p2, v1

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    iget-object v0, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->selection:[I

    const/4 p1, 0x2

    iput p1, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    return-void
.end method

.method private createDropContentWithContentList(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            ")",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->belongsToSpan()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->copyObjectSpanText(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->fillDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->getAudioClipDataContentUri(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private fillDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillDropContent# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->convertObjectToDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->convertTextToDropContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->makeImageSpan(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private getAudioClipDataContentUri(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p3, "getAudioClipDataContentUri#"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getContainerSpannableString(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-static {p2, p4, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->makeImageSpan(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getImageSpannableString(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Z)Landroid/text/SpannableString;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p2, "convertObjectToTextHtml# ImageContent, newPath is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->makeImageSpan(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method private getWebSpannableString(Ljava/lang/String;Z)Landroid/text/SpannableString;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p2, "convertObjectToTextHtml# WebCardContent, path is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, "\n\n"

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/text/style/URLSpan;

    invoke-direct {p2, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 1

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getFollowers()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    iput p1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    return-void
.end method

.method private makeImageSpan(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    if-eqz p3, :cond_0

    const-string p3, " "

    goto :goto_0

    :cond_0
    const-string p3, " \n\n"

    :goto_0
    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string p2, "makeImageSpan# uri is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p3, Landroid/text/style/ImageSpan;

    invoke-direct {p3, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 v1, 0x21

    invoke-virtual {v0, p3, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mBackupPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string v1, "clear# removeCache"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mBackupPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->removeClosedCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string v1, "clear# - fail to remove cache"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->createDropContentWithContentList(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    const-string v1, "fail to create content list"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
