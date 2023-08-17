.class Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;
.super Lorg/apache/poi/java/awt/ModalEventFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/ModalEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationModalEventFilter"
.end annotation


# instance fields
.field private appContext:Lorg/apache/poi/sun/awt/AppContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ModalEventFilter;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    iput-object p1, p0, Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method


# virtual methods
.method public acceptWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->APPLICATION_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    iget-object v1, p0, Lorg/apache/poi/java/awt/ModalEventFilter$ApplicationModalEventFilter;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-ne v0, v1, :cond_3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/ModalEventFilter;->modalDialog:Lorg/apache/poi/java/awt/Dialog;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT_IMMEDIATELY:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->REJECT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_3
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1
.end method
