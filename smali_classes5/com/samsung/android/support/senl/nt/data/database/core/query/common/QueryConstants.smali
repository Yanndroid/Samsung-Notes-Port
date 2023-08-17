.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/common/QueryConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ESCAPE_CHARACTER:C = '\ufffd'

.field public static final ESCAPE_CHARACTER_STRING:Ljava/lang/String; = "\'\ufffd\'"

.field public static final LOCKED_CONDITION:Ljava/lang/String; = "(sdoc.isLock != 0 AND sdoc.isLock != -1)"

.field private static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final SPLIT_TASK_UNIT:I = 0x1f4

.field public static final UNLOCKED_CONDITION:Ljava/lang/String; = "(sdoc.isLock=0 OR sdoc.isLock=-1)"

.field public static final USED_DOCUMENT_CONDITION:Ljava/lang/String; = "sdoc.isDeleted = 0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
