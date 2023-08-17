.class public interface abstract annotation Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Action"
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT_BY_RESUME:Ljava/lang/String; = "CONNECT_BY_RESUME"

.field public static final ACTION_LEAVE_BY_BACK_KEY:Ljava/lang/String; = "LEAVE_BY_BACK_KEY"

.field public static final ACTION_LEAVE_BY_HOME_KEY:Ljava/lang/String; = "LEAVE_BY_HOME_KEY"

.field public static final ACTION_LEAVE_BY_SCREEN_OFF:Ljava/lang/String; = "LEAVE_BY_SCREEN_OFF"

.field public static final ACTION_LEAVE_BY_TASK_CHANGE:Ljava/lang/String; = "LEAVE_BY_TASK_CHANGE"
