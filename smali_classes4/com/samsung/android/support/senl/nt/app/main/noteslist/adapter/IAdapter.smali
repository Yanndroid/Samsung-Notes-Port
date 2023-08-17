.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract loadOrderingProcessorEnabled()Z
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract notifyItemChanged(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract notifyItemRangeChanged(II)V
.end method

.method public abstract onListScrolled(I)V
.end method

.method public abstract onScrollStateChanged(I)V
.end method

.method public abstract setHighlightText(Ljava/lang/String;)V
.end method

.method public abstract skippedDecorateThumbnail(Ljava/lang/String;)V
.end method
