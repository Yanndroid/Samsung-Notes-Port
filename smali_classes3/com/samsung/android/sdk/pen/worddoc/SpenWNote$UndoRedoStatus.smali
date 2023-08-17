.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$UndoRedoStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoRedoStatus"
.end annotation


# static fields
.field public static final COMPLETED_REDO:I = 0x6

.field public static final COMPLETED_UNDO:I = 0x2

.field public static final FAILED_REDO:I = 0x4

.field public static final FAILED_UNDO:I = 0x0

.field public static final INCOMPLETED_REDO:I = 0x7

.field public static final INCOMPLETED_UNDO:I = 0x3

.field public static final INIT_REDO:I = 0x5

.field public static final INIT_UNDO:I = 0x1

.field public static final UNKNOWN:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
