.class Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsContentsInfo"
.end annotation


# instance fields
.field public contentUuid:Ljava/lang/String;

.field public displayContent:Ljava/lang/CharSequence;

.field public isFirstJoin:Z

.field public strokeRatio:F

.field public strokeUuid:Ljava/lang/String;

.field public textContent:Ljava/lang/StringBuilder;

.field public vrUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->isFirstJoin:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeRatio:F

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->vrUuid:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->textContent:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public joinDisplayContent(Ljava/lang/CharSequence;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "joinDisplayContent, sequence is null."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->isFirstJoin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->isFirstJoin:Z

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    return-void
.end method
