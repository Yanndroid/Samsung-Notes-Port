.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewContract"
.end annotation


# virtual methods
.method public abstract getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;
.end method

.method public abstract hasSearchView()Z
.end method

.method public abstract onQueryTextChange(Ljava/lang/String;)Z
.end method

.method public abstract onQueryTextSubmit(Ljava/lang/String;)Z
.end method

.method public abstract onSearchEnterClick()V
.end method
