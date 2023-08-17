.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract animateTagCue()V
.end method

.method public abstract cancelUpdateTitleList()V
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleView()Landroid/widget/EditText;
.end method

.method public abstract hide(Z)Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setBackgroundColor(IZZ)V
.end method

.method public abstract updateCoeditMemberInfo()V
.end method

.method public abstract updateCreatedTime(Ljava/lang/String;)V
.end method

.method public abstract updateCreator()V
.end method

.method public abstract updateEditableState(Z)V
.end method

.method public abstract updateFavorite(Z)V
.end method

.method public abstract updateFolderInfo(Ljava/lang/String;II)V
.end method

.method public abstract updateLastModifiedTime(Ljava/lang/String;)V
.end method

.method public abstract updateTitle()V
.end method

.method public abstract updateTitleList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
