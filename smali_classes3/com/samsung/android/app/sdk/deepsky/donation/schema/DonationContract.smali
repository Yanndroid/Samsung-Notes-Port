.class public final Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001 B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n \u0007*\u0004\u0018\u00010\u000c0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001d\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\tR\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;",
        "",
        "()V",
        "AUTHORITY",
        "",
        "CONTENT_URI",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "getCONTENT_URI",
        "()Landroid/net/Uri;",
        "DONATION_DATE_FORMAT",
        "DONATION_LOCALE",
        "Ljava/util/Locale;",
        "getDONATION_LOCALE",
        "()Ljava/util/Locale;",
        "DONATION_METHOD_CALL",
        "DONATION_RESULT_KEY",
        "DONATION_WIDGET_METHOD_CALL",
        "KEY_ACTIONTABLE",
        "KEY_ACTIONVIEW",
        "KEY_COMPONENT_NAME",
        "KEY_DURATION",
        "KEY_PARAM_NAME_REMOVE",
        "KEY_PARAM_VALUE_REMOVE",
        "KEY_SCORE",
        "KEY_START_TIME",
        "KEY_VISIBILITY",
        "KEY_WILL_PROVIDE_REASON",
        "LEGACY_KEY_DURATION",
        "READ_CONTENT_URI",
        "getREAD_CONTENT_URI",
        "REMOVE_DONATED_DATA",
        "ColumnNames",
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
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.deepsky.donation.donateaction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final DONATION_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DONATION_LOCALE:Ljava/util/Locale;

.field public static final DONATION_METHOD_CALL:Ljava/lang/String; = "donate_user_action"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DONATION_RESULT_KEY:Ljava/lang/String; = "db_insert_result"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DONATION_WIDGET_METHOD_CALL:Ljava/lang/String; = "donate_relevant_widget"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_ACTIONTABLE:Ljava/lang/String; = "ActionDataTable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_ACTIONVIEW:Ljava/lang/String; = "ActionView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_COMPONENT_NAME:Ljava/lang/String; = "key_component_name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DURATION:Ljava/lang/String; = "key_duration"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PARAM_NAME_REMOVE:Ljava/lang/String; = "key_param_name_remove"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PARAM_VALUE_REMOVE:Ljava/lang/String; = "key_param_value_remove"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SCORE:Ljava/lang/String; = "key_score"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_START_TIME:Ljava/lang/String; = "key_start_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_VISIBILITY:Ljava/lang/String; = "key_visibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_WILL_PROVIDE_REASON:Ljava/lang/String; = "key_will_provide_reason"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LEGACY_KEY_DURATION:Ljava/lang/String; = "key_duration_second"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final READ_CONTENT_URI:Landroid/net/Uri;

.field public static final REMOVE_DONATED_DATA:Ljava/lang/String; = "remove_donated_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    const-string v0, "content://com.samsung.android.app.deepsky.donation.donateaction/ActionDataTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.deepsky.donation.donateaction/ActionView"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->READ_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->DONATION_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDONATION_LOCALE()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->DONATION_LOCALE:Ljava/util/Locale;

    return-object v0
.end method

.method public final getREAD_CONTENT_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->READ_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
