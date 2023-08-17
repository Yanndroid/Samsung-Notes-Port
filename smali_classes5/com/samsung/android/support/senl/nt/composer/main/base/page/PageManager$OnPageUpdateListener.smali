.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageUpdateListener"
.end annotation


# static fields
.field public static final TYPE_MOVE_PAGE:I = 0x2

.field public static final TYPE_UPDATE_PAGE:I = 0x1

.field public static final TYPE_UPDATE_PAGE_COUNT:I = 0x3


# virtual methods
.method public abstract onDeletedPages(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onInsertedPages(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
.end method

.method public abstract onUpdatePage(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
.end method
