.class public final Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;",
        "",
        "()V",
        "ENABLE_RUNESTONE_GENERIC_MODEL",
        "",
        "EXTRA_SUGGESTION_FROM",
        "TYPE_ACTION_PATTERN",
        "TYPE_ACTION_RULE",
        "TYPE_DPS_PREDICTED",
        "TYPE_PACKAGE_CHANGED_RULE",
        "TYPE_RUNESTONE_PREDICTED",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ENABLE_RUNESTONE_GENERIC_MODEL:Ljava/lang/String; = "enable_runestone_generic_model"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_SUGGESTION_FROM:Ljava/lang/String; = "extra_suggestion_from"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_ACTION_PATTERN:Ljava/lang/String; = "type_action_pattern"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_ACTION_RULE:Ljava/lang/String; = "type_action_rule"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DPS_PREDICTED:Ljava/lang/String; = "type_dps_predicted"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_PACKAGE_CHANGED_RULE:Ljava/lang/String; = "type_package_changed_rule"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_RUNESTONE_PREDICTED:Ljava/lang/String; = "type_runestone_predicted"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionContract;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
