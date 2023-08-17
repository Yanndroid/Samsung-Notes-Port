.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleParamBuilder"
.end annotation


# instance fields
.field private final mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V

    return-object p0
.end method

.method public setContent(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setHighlightText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsLock(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V

    return-object p0
.end method

.method public setIsSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V

    return-object p0
.end method

.method public setIsSupportInvertedBGColor(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;Z)V

    return-object p0
.end method

.method public setMaxLine(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V

    return-object p0
.end method

.method public setViewMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam$TitleParamBuilder;->mTitleParam:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$TitleParam;I)V

    return-object p0
.end method
