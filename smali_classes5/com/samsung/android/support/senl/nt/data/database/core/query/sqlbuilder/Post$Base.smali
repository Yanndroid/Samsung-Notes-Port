.class public interface abstract Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Base;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Base"
.end annotation


# virtual methods
.method public abstract append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
