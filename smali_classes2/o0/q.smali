.class public Lo0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:F

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:J

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J

.field public v:J

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo0/q;->f:Ljava/lang/String;

    iput-object v0, p0, Lo0/q;->i:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lo0/q;->j:I

    iput v1, p0, Lo0/q;->k:I

    iput-object v0, p0, Lo0/q;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lo0/q;->p:I

    iput v1, p0, Lo0/q;->q:I

    iput v1, p0, Lo0/q;->r:I

    iput-object v0, p0, Lo0/q;->s:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo0/q;->t:J

    iput-wide v1, p0, Lo0/q;->u:J

    iput-wide v1, p0, Lo0/q;->v:J

    iput-object v0, p0, Lo0/q;->w:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/q;->x:I

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/q;->y:I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/q;

    iget v1, p0, Lo0/q;->b:I

    iget v3, p1, Lo0/q;->b:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_WDocEndTag"

    if-eq v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !! equals() - NE - mFormatVersion["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo0/q;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lo0/q;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lq0/b;->a:Z

    if-eqz v1, :cond_2

    const-string v1, " !! temporary keep going"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    iget-object v1, p0, Lo0/q;->c:Ljava/lang/String;

    iget-object v3, p1, Lo0/q;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mNoteId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/q;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-wide v7, p0, Lo0/q;->d:J

    iget-wide v9, p1, Lo0/q;->d:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mModifiedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo0/q;->d:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lo0/q;->d:J

    :goto_3
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget v1, p0, Lo0/q;->e:I

    iget v3, p1, Lo0/q;->e:I

    const-string v7, " !! equals() - NE - mPropertyFlag["

    if-eq v1, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->e:I

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lo0/q;->f:Ljava/lang/String;

    iget-object v3, p1, Lo0/q;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mCoverImage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/q;->f:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget v1, p0, Lo0/q;->g:I

    iget v3, p1, Lo0/q;->g:I

    if-eq v1, v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mNoteWidth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->g:I

    goto :goto_4

    :cond_8
    iget v1, p0, Lo0/q;->h:F

    iget v3, p1, Lo0/q;->h:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->h:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lo0/q;->l:Ljava/lang/String;

    iget-object v3, p1, Lo0/q;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mAppPatchName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/q;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iget v1, p0, Lo0/q;->m:I

    iget v3, p1, Lo0/q;->m:I

    if-eq v1, v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mMinFormatVersion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->m:I

    goto/16 :goto_4

    :cond_b
    iget-wide v7, p0, Lo0/q;->n:J

    iget-wide v9, p1, Lo0/q;->n:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mCreationTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo0/q;->n:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lo0/q;->n:J

    goto/16 :goto_3

    :cond_c
    iget v1, p0, Lo0/q;->o:I

    iget v3, p1, Lo0/q;->o:I

    if-eq v1, v3, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mLastViewedPageIndex["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->o:I

    goto/16 :goto_4

    :cond_d
    iget v1, p0, Lo0/q;->p:I

    iget v3, p1, Lo0/q;->p:I

    if-eq v1, v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mOrientation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->p:I

    goto/16 :goto_4

    :cond_e
    iget v1, p0, Lo0/q;->q:I

    iget v3, p1, Lo0/q;->q:I

    if-eq v1, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mPageMode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->q:I

    goto/16 :goto_4

    :cond_f
    iget v1, p0, Lo0/q;->r:I

    iget v3, p1, Lo0/q;->r:I

    if-eq v1, v3, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mDocumentType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->r:I

    goto/16 :goto_4

    :cond_10
    iget-object v1, p0, Lo0/q;->s:Ljava/lang/String;

    iget-object v3, p1, Lo0/q;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mOwnerId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/q;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/q;->s:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-wide v7, p0, Lo0/q;->t:J

    iget-wide v9, p1, Lo0/q;->t:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mDisplayCreatedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo0/q;->t:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lo0/q;->t:J

    goto/16 :goto_3

    :cond_12
    iget-wide v7, p0, Lo0/q;->u:J

    iget-wide v9, p1, Lo0/q;->u:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mDisplayModifiedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo0/q;->u:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lo0/q;->u:J

    goto/16 :goto_3

    :cond_13
    iget-wide v7, p0, Lo0/q;->v:J

    iget-wide v9, p1, Lo0/q;->v:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mlastRecognizedDataModifiedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo0/q;->v:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lo0/q;->v:J

    goto/16 :goto_3

    :cond_14
    iget-object v1, p0, Lo0/q;->w:Ljava/lang/String;

    iget-object v3, p1, Lo0/q;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mFixedFont["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/q;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/q;->w:Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    iget v1, p0, Lo0/q;->x:I

    iget v3, p1, Lo0/q;->x:I

    if-eq v1, v3, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mFixedTextDirection["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->x:I

    goto/16 :goto_4

    :cond_16
    iget v1, p0, Lo0/q;->y:I

    iget v3, p1, Lo0/q;->y:I

    if-eq v1, v3, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mFixedBackgroundTheme["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/q;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/q;->y:I

    goto/16 :goto_4

    :cond_17
    return v0
.end method

.method public final a()I
    .locals 2

    iget-object v0, p0, Lo0/q;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo0/q;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo0/q;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo0/q;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lo0/q;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lo0/q;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lo0/q;->r:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lo0/q;->y:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/q;->w:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lo0/q;->x:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lo0/q;->b:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lo0/q;->v:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lo0/q;->m:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lo0/q;->p:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/q;->s:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lo0/q;->q:I

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/end_tag.bin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    add-int/lit8 v0, v0, -0x16

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, p0, Lo0/q;->b:I

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo0/q;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v2

    const/4 v3, 0x4

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    iput-wide v4, p0, Lo0/q;->d:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->e:I

    add-int/2addr v1, v3

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    iput v4, p0, Lo0/q;->p:I

    :cond_0
    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lo0/q;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->g:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v4

    iput v4, p0, Lo0/q;->h:F

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lo0/q;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->j:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->k:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lo0/q;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->m:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    iput-wide v4, p0, Lo0/q;->n:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, p0, Lo0/q;->o:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Lo0/q;->q:I

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Lo0/q;->r:I

    add-int/lit8 v1, v1, 0x2

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo0/q;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_2
    if-ge v1, v0, :cond_3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    if-lez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr v1, v2

    :cond_3
    if-ge v1, v0, :cond_4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr v1, v2

    :cond_4
    if-ge v1, v0, :cond_5

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    iput-wide v2, p0, Lo0/q;->t:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    iput-wide v2, p0, Lo0/q;->u:J

    add-int/lit8 v1, v1, 0x8

    :cond_5
    if-ge v1, v0, :cond_6

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    iput-wide v2, p0, Lo0/q;->v:J

    add-int/lit8 v1, v1, 0x8

    :cond_6
    if-ge v1, v0, :cond_7

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Lo0/q;->x:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Lo0/q;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "WDocFileManager() - cannot access attach data file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cachePath is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ll0/c;)V
    .locals 2

    invoke-virtual {p1}, Ll0/c;->u()I

    move-result v0

    iput v0, p0, Lo0/q;->b:I

    invoke-virtual {p1}, Ll0/c;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ll0/c;->A()J

    move-result-wide v0

    iput-wide v0, p0, Lo0/q;->d:J

    invoke-virtual {p1}, Ll0/c;->F()I

    move-result v0

    iput v0, p0, Lo0/q;->g:I

    invoke-virtual {p1}, Ll0/c;->E()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo0/q;->h:F

    invoke-virtual {p1}, Ll0/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ll0/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lo0/q;->i:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Ll0/c;->g()I

    move-result v0

    iput v0, p0, Lo0/q;->j:I

    invoke-virtual {p1}, Ll0/c;->h()I

    move-result v0

    iput v0, p0, Lo0/q;->k:I

    invoke-virtual {p1}, Ll0/c;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ll0/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->l:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lo0/q;->l:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Ll0/c;->z()I

    move-result v0

    iput v0, p0, Lo0/q;->m:I

    invoke-virtual {p1}, Ll0/c;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lo0/q;->n:J

    invoke-virtual {p1}, Ll0/c;->G()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo0/q;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo0/q;->e:I

    :cond_2
    invoke-virtual {p1}, Ll0/c;->I()I

    move-result v0

    iput v0, p0, Lo0/q;->q:I

    invoke-virtual {p1}, Ll0/c;->q()I

    move-result v0

    iput v0, p0, Lo0/q;->r:I

    invoke-virtual {p1}, Ll0/c;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ll0/c;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lo0/q;->t:J

    invoke-virtual {p1}, Ll0/c;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lo0/q;->u:J

    invoke-virtual {p1}, Ll0/c;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lo0/q;->v:J

    invoke-virtual {p1}, Ll0/c;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/q;->w:Ljava/lang/String;

    invoke-virtual {p1}, Ll0/c;->t()I

    move-result v0

    iput v0, p0, Lo0/q;->x:I

    invoke-virtual {p1}, Ll0/c;->r()I

    move-result p1

    iput p1, p0, Lo0/q;->y:I

    return-void
.end method

.method public final n(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-virtual {p0}, Lo0/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->b:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Lo0/q;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v0, p0, Lo0/q;->d:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget v0, p0, Lo0/q;->e:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Lo0/q;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v0, p0, Lo0/q;->g:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->h:F

    invoke-static {p1, v0}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v0, p0, Lo0/q;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v0, p0, Lo0/q;->j:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->k:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Lo0/q;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v0, p0, Lo0/q;->m:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-wide v0, p0, Lo0/q;->n:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget v0, p0, Lo0/q;->o:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->q:I

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->r:I

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Lo0/q;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-wide v0, p0, Lo0/q;->t:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-wide v0, p0, Lo0/q;->u:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-wide v0, p0, Lo0/q;->v:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-object v0, p0, Lo0/q;->w:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v0, p0, Lo0/q;->x:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Lo0/q;->y:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const-string v0, "Document for S-Pen SDK"

    invoke-static {p1, v0}, Lq0/b;->L(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WCon_WDocEndTag"

    const-string/jumbo v1, "writeWDoc1() : Write data to end_tag.bin"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/end_tag.bin"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/q;->a:Ljava/lang/String;

    const-string/jumbo v1, "writeWDoc()"

    invoke-static {v1, p1}, Lq0/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lo0/q;->n(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    iget-object p1, p0, Lo0/q;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lq0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "writeWDoc1() : end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "outCachePath is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
