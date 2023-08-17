.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Ljava/lang/String;Z)V
    .locals 9

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues$1;

    move-object v0, p6

    invoke-direct {v6, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;Ljava/lang/String;Z)V

    return-void
.end method
