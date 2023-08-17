.class public Ll0/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;
.implements Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:[I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ll0/e$d;->f:[I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ll0/e$d;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ll0/e$d;

    const-string v0, "WCon_Page"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;->compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->a:I

    const-string v3, "mFileId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->b:I

    const-string/jumbo v3, "width"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->c:I

    const-string v3, "height"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ll0/e$d;->d:Z

    const-string v3, "isDarkMode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->e:I

    const-string v3, "backgroundColor"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget-object v2, p0, Ll0/e$d;->f:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const-string/jumbo v3, "version"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget-object v2, p0, Ll0/e$d;->f:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget-object v2, p0, Ll0/e$d;->f:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->g:I

    const-string v3, "cacheVersion"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->h:I

    const-string v3, "property"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->i:I

    const-string v3, "localeListId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e$d;->j:I

    const-string v3, "systemFontPathHash"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    return-object v0
.end method
