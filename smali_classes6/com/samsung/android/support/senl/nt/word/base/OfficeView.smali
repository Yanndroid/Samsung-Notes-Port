.class public abstract Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeDocument:",
        "Ljava/lang/Object;",
        "OfficeElement:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COLOR_GRAY99:I

.field private static final LINE_BREAK:C = '\n'

.field private static final MAXIMUM_NUMBER_OF_EXPORTS:I = 0x2

.field private static final PAGE:Ljava/lang/String; = "Page : "

.field public static final TAG:Ljava/lang/String; = "OfficeView"

.field public static mElementId:I


# instance fields
.field public addVoice:Z

.field public context:Landroid/content/Context;

.field public cropHeight:I

.field public currentLine:I

.field public indexTextbox:I

.field public isAlive:Z

.field public isContinuousPage:Z

.field public lineCountBefore:I

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

.field public mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

.field public mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

.field private mObjectBases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public mOffice:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOfficeDocument;"
        }
    .end annotation
.end field

.field public mOfficeElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOfficeElement;"
        }
    .end annotation
.end field

.field private mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;"
        }
    .end annotation
.end field

.field public modeExport:I

.field public notePath:Ljava/lang/String;

.field private objectSpanOfPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public prevHeight:I

.field public results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation
.end field

.field public wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#fcfcfc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->COLOR_GRAY99:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoice:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->objectSpanOfPage:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->notePath:Ljava/lang/String;

    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance p2, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string p2, "settings_export"

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p1, p2, :cond_0

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->configLib()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->createDocument()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    return-void
.end method

.method private addObjectSpan(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;[ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;[I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p8

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move v4, v5

    move v6, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v4, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v6, v5

    :cond_3
    :goto_1
    aget v1, p3, v5

    const/4 v3, 0x1

    aget v4, p3, v3

    move v8, v1

    move v7, v5

    :goto_2
    add-int v9, v6, v1

    if-ge v7, v9, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object v10

    iget v12, v10, Landroid/graphics/RectF;->top:F

    int-to-float v13, v2

    cmpl-float v13, v12, v13

    if-lez v13, :cond_4

    goto :goto_5

    :cond_4
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v12, v10

    float-to-double v12, v12

    move-object v10, p0

    iget-boolean v14, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v14, :cond_7

    move/from16 v14, p7

    move/from16 p6, v6

    int-to-double v5, v14

    cmpl-double v5, v12, v5

    if-lez v5, :cond_5

    int-to-double v5, v2

    cmpg-double v5, v12, v5

    if-gtz v5, :cond_5

    goto :goto_3

    :cond_5
    int-to-double v5, v2

    cmpl-double v5, v12, v5

    if-lez v5, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    move-object/from16 v6, p4

    move-object/from16 v12, p5

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move/from16 v14, p7

    move/from16 p6, v6

    :goto_3
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v12, p5

    invoke-virtual {v12, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v5, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p6

    goto :goto_2

    :cond_8
    :goto_5
    move-object v10, p0

    aput v8, p3, v5

    aput v4, p3, v3

    return-void
.end method

.method private close()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getCaptureEngine()Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getCaptureEngine()Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error close() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getObjectNeedAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectNeedAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->objectSpanOfPage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getObjectsContinuousPage(II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mObjectBases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-double v5, v3

    int-to-double v7, p1

    cmpl-double v3, v5, v7

    if-lez v3, :cond_2

    int-to-double v7, p2

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    int-to-float v2, p1

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    :cond_3
    return-object v0
.end method

.method private getObjectsFixedPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getPageThumbnailRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Landroid/graphics/RectF;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    :goto_1
    if-ge v2, p1, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-int/2addr v2, v1

    int-to-float v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPageThumbnailRect# "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfficeView"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private hasBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->COLOR_GRAY99:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private hasHandWriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    int-to-float v1, v1

    :cond_0
    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->findObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method public static increaseElementId()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    return-void
.end method

.method public static setElementId(I)V
    .locals 0

    sput p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    return-void
.end method

.method private sortObjectSpan(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$2;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method private taskIsDead()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Export task is interrupted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
.end method

.method public abstract addBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;IIILjava/lang/String;)V
.end method

.method public abstract addBodyTextContinuous(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;ILcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "TOfficeDocument;TOfficeElement;>.ContinueIndex;II)V"
        }
    .end annotation
.end method

.method public abstract addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
.end method

.method public abstract addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addRecognizeText(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)V"
        }
    .end annotation
.end method

.method public addVoiceDataToView(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 0

    return-void
.end method

.method public configLib()V
    .locals 4

    :try_start_0
    const-string v0, "org.apache.poi.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.fasterxml.aalto.stax.InputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.fasterxml.aalto.stax.OutputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.fasterxml.aalto.stax.EventFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configLib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public countLinesBefore(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public abstract createDocument()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOfficeDocument;"
        }
    .end annotation
.end method

.method public exportContinuousPage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 26

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start export continuous page"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->notePath:Ljava/lang/String;

    iget v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getExtractTextResult(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->results:Ljava/util/List;

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v10

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_0

    return-object v13

    :cond_0
    new-instance v14, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->context:Landroid/content/Context;

    invoke-direct {v14, v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    invoke-virtual {v14, v11}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getPageThumbnailRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mObjectBases:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$3;

    invoke-direct {v2, v9}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$3;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->initHelper(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v1

    iget-object v2, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    int-to-float v4, v11

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v3, v11

    :goto_0
    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/2addr v3, v1

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    int-to-float v4, v3

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_4
    move-object v7, v13

    :goto_1
    invoke-direct {v9, v7}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->sortObjectSpan(Ljava/util/ArrayList;)V

    const/4 v6, 0x2

    new-array v5, v6, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->results:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/word/common/SpenWPageHelper;->getTextExtractInfosContinuousPage(Ljava/util/List;Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v13

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v0, v11

    move/from16 v18, v0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget-object v2, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->objectSpanOfPage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    add-int v4, v0, v1

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v0

    iget v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->updateMargin(II)V

    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    invoke-direct {v9, v0, v4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectsContinuousPage(II)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v14, v4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getContinueIndex(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;I)Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;

    move-result-object v19

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getStartIndex()I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getEndIndex()I

    move-result v1

    if-nez v1, :cond_6

    const-string v0, ""

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v6, v0

    iget v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object v1, v14

    move-object/from16 v22, v2

    move-object v2, v7

    move-object/from16 v23, v3

    move-object v3, v5

    move/from16 v24, v4

    move-object/from16 v4, v23

    move-object/from16 v25, v5

    move-object/from16 v5, v22

    const/4 v11, 0x2

    move-object/from16 v20, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v24

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addObjectSpan(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;[ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move v11, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    :cond_9
    move-object/from16 v7, v21

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    invoke-direct {v9, v15, v0, v1, v7}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectNeedAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    const/4 v8, 0x1

    if-ne v0, v11, :cond_a

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move v6, v11

    goto :goto_6

    :cond_a
    move v6, v8

    :goto_6
    move v5, v8

    :goto_7
    if-gt v5, v6, :cond_1a

    iput-object v13, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_f

    :cond_b
    invoke-direct {v9, v12}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->hasBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result v0

    move/from16 v4, v24

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v9, v12, v0, v4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_d

    move v13, v4

    goto/16 :goto_10

    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move v3, v4

    move v13, v4

    move-object/from16 v4, v19

    move/from16 v22, v5

    move/from16 v23, v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addBodyTextContinuous(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;ILcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;II)V

    goto :goto_8

    :cond_e
    move v13, v4

    move/from16 v22, v5

    move/from16 v23, v6

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_9
    goto/16 :goto_10

    :cond_f
    if-eqz v16, :cond_10

    aget-object v0, v16, v18

    if-eqz v0, :cond_10

    aget-object v0, v16, v18

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    move/from16 v6, v22

    if-ne v6, v8, :cond_11

    aget-object v0, v16, v18

    invoke-virtual {v9, v0, v12, v13}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addRecognizeText(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    goto :goto_a

    :cond_10
    move/from16 v6, v22

    :cond_11
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    iget-boolean v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoice:Z

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v12

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    invoke-direct {v9, v12, v13}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->hasHandWriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    if-eq v0, v8, :cond_14

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    if-ne v0, v11, :cond_16

    if-ne v6, v11, :cond_16

    goto :goto_b

    :goto_d
    invoke-virtual {v9, v12, v0, v13}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    iget-boolean v5, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoice:Z

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v12

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    if-nez v18, :cond_19

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v9, v12, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoiceDataToView(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_e
    iput v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    add-int/lit8 v5, v6, 0x1

    move/from16 v24, v13

    move/from16 v6, v23

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_1a
    :goto_f
    move/from16 v13, v24

    :goto_10
    const/4 v0, 0x0

    iput v13, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    add-int/lit8 v18, v18, 0x1

    move-object v8, v7

    move v6, v11

    move-object/from16 v7, v20

    move-object/from16 v5, v25

    move v11, v0

    move v0, v13

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    const-string v1, "Task is dead, return null"

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->close()V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->makeOfficeFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->insertFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End export continuous page"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public exportFixedSizePage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 26

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start export fixed size page"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->notePath:Ljava/lang/String;

    iget v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getExtractTextResult(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->results:Ljava/util/List;

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPageCount()I

    move-result v0

    const/4 v10, 0x1

    add-int/lit8 v11, v0, -0x1

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->initHelper(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    new-instance v13, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->context:Landroid/content/Context;

    invoke-direct {v13, v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v13}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-direct {v9, v7}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->sortObjectSpan(Ljava/util/ArrayList;)V

    const/4 v6, 0x2

    new-array v5, v6, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_16

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->objectSpanOfPage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v16, v5

    move/from16 v18, v6

    move-object/from16 v24, v7

    move v6, v10

    move/from16 v20, v11

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    move v10, v0

    move v13, v3

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    invoke-virtual {v9, v0, v4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->updateMargin(II)V

    invoke-direct {v9, v2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectsFixedPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v12, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v6

    invoke-virtual {v12, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionLength(I)I

    move-result v18

    add-int v8, v18, v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v8, v10, :cond_3

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v8, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object v1, v13

    move/from16 v20, v11

    move-object v11, v2

    move-object v2, v7

    move-object/from16 v21, v13

    move v13, v3

    move-object v3, v5

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move-object v5, v6

    move-object/from16 v23, v12

    move-object v12, v6

    move-object v6, v10

    move-object/from16 v24, v7

    move v7, v8

    move-object/from16 v25, v10

    const/4 v10, 0x0

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addObjectSpan(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;[ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;II)V

    move-object/from16 v8, v25

    goto :goto_2

    :cond_3
    move/from16 v19, v1

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move-object/from16 v24, v7

    move/from16 v20, v11

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    const/4 v10, 0x0

    move-object v12, v0

    move-object v11, v2

    move v13, v3

    move-object v8, v10

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_4
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    :cond_5
    move-object/from16 v0, v22

    invoke-direct {v9, v14, v0, v12, v15}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectNeedAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->results:Ljava/util/List;

    invoke-static {v0, v11}, Lcom/samsung/android/support/senl/nt/word/common/SpenWPageHelper;->getTextExtractInfosFixedPage(Ljava/util/List;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/util/ArrayList;

    move-result-object v7

    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mStrokes:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v12, 0x2

    goto :goto_3

    :cond_6
    const/4 v12, 0x1

    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-gt v6, v12, :cond_15

    iput-object v10, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-direct {v9, v11}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->hasBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result v0

    move/from16 v5, v19

    if-eqz v0, :cond_8

    invoke-virtual {v9, v11, v13, v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_9

    move v10, v5

    goto/16 :goto_b

    :cond_9
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move v3, v13

    move v4, v6

    move v10, v5

    move v5, v12

    move/from16 v19, v12

    move v12, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;IIILjava/lang/String;)V

    goto :goto_5

    :cond_a
    move v10, v5

    move/from16 v19, v12

    move v12, v6

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    goto/16 :goto_b

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    if-ne v12, v0, :cond_c

    invoke-virtual {v9, v7, v11, v10}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addRecognizeText(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-boolean v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoice:Z

    const/4 v1, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v14

    move-object v3, v11

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-direct {v9, v11, v10}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->hasHandWriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_f

    goto :goto_7

    :cond_f
    const/4 v5, 0x2

    goto :goto_8

    :cond_10
    const/4 v6, 0x1

    :goto_7
    iget v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_11

    if-ne v12, v5, :cond_11

    :goto_8
    invoke-virtual {v9, v11, v13, v10}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_12

    move/from16 v18, v5

    :goto_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    iget-boolean v4, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoice:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v14

    move-object v3, v11

    move/from16 v17, v4

    move-object v4, v15

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    if-nez v13, :cond_14

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v9, v11, v13}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->addVoiceDataToView(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    :cond_14
    const/4 v0, 0x0

    iput v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    add-int/lit8 v1, v12, 0x1

    move v6, v1

    move/from16 v12, v19

    move/from16 v19, v10

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_15
    :goto_a
    move/from16 v10, v19

    :goto_b
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v18, 0x2

    :goto_c
    iput v10, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    :goto_d
    add-int/lit8 v3, v13, 0x1

    move v0, v10

    move-object/from16 v5, v16

    move/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    move-object/from16 v7, v24

    move v10, v6

    move/from16 v6, v18

    goto/16 :goto_1

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->taskIsDead()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task is dead, return null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->close()V

    iget-object v0, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->makeOfficeFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->insertFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End export fixed size page"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getContinueIndex(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;I)Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I)",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "TOfficeDocument;TOfficeElement;>.ContinueIndex;"
        }
    .end annotation
.end method

.method public getExtractTextResult(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq p2, v0, :cond_1

    new-array p2, v0, [Z

    aput-boolean v3, p2, v3

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "OfficeView"

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$1;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;[Ljava/util/List;Ljava/lang/String;[Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    if-eqz p1, :cond_0

    aget-boolean p1, p2, v3

    if-nez p1, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "End recognize"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    aget-object p1, v1, v3

    return-object p1
.end method

.method public abstract getFileExtension()Ljava/lang/String;
.end method

.method public getObjectSpanOfPage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->objectSpanOfPage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract initHelper(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
.end method

.method public insertFile(Ljava/io/File;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public makeOfficeFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeDocument;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "close stream error: "

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "make office File"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->writeToFile(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v2, "make office file success "

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, p3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make office fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-object p3

    :catchall_1
    move-exception p1

    move-object p3, v1

    :goto_3
    if-eqz p3, :cond_1

    :try_start_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getTag()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    throw p1
.end method

.method public updateMargin(II)V
    .locals 0

    return-void
.end method

.method public abstract writeToFile(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeDocument;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation
.end method
