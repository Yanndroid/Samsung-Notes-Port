.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/ILockScenario;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCENARIO_CHANGE_PASSWORD:I = 0x2

.field public static final SCENARIO_CREATE_PASSWORD:I = 0x1

.field public static final SCENARIO_CREATE_PASSWORD_NO_ACCOUNT_CHECK:I = 0xb

.field public static final SCENARIO_NONE:I = 0x0

.field public static final SCENARIO_VERIFY:I = 0x5

.field public static final SCENARIO_VERIFY_BACKUP_PASSWORD:I = 0x6

.field public static final SCENARIO_VERIFY_PASSWORD:I = 0x3

.field public static final SCENARIO_VERIFY_PASSWORD_FOR_BIOMETRIC:I = 0x4


# virtual methods
.method public abstract getNextViewType()I
.end method

.method public abstract getViewQueue()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method

.method public abstract insertFront(I)V
.end method
