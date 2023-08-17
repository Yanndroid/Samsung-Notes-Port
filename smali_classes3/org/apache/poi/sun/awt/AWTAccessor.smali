.class public final Lorg/apache/poi/sun/awt/AWTAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;,
        Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;
    }
.end annotation


# static fields
.field private static accessibleContextAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;

.field private static awtEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

.field private static checkboxMenuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;

.field private static clientPropertyKeyAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;

.field private static componentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

.field private static containerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;

.field private static cursorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;

.field private static defaultKeyboardFocusManagerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

.field private static eventQueueAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

.field private static fileDialogAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;

.field private static frameAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;

.field private static inputEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;

.field private static invocationEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;

.field private static keyEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;

.field private static kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

.field private static menuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;

.field private static menuBarAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;

.field private static menuComponentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

.field private static menuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;

.field private static mouseEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;

.field private static popupMenuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;

.field private static scrollPaneAdjustableAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

.field private static sequencedEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;

.field private static systemColorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;

.field private static systemTrayAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;

.field private static toolkitAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;

.field private static trayIconAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;

.field private static final unsafe:Lorg/apache/poi/sun/misc/Unsafe;

.field private static windowAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/misc/Unsafe;->getUnsafe()Lorg/apache/poi/sun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAWTEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->awtEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->awtEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    return-object v0
.end method

.method public static getAccessibleContextAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->accessibleContextAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljavax/accessibility/AccessibleContext;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->accessibleContextAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;

    return-object v0
.end method

.method public static getCheckboxMenuItemAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->checkboxMenuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->checkboxMenuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    return-object v0
.end method

.method public static getClientPropertyKeyAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->clientPropertyKeyAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->clientPropertyKeyAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    return-object v0
.end method

.method public static getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->componentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->componentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    return-object v0
.end method

.method public static getContainerAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->containerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->containerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;

    return-object v0
.end method

.method public static getCursorAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->cursorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->cursorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;

    return-object v0
.end method

.method public static getDefaultKeyboardFocusManagerAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->defaultKeyboardFocusManagerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->defaultKeyboardFocusManagerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    return-object v0
.end method

.method public static getEventQueueAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->eventQueueAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/EventQueue;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->eventQueueAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    return-object v0
.end method

.method public static getFileDialogAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->fileDialogAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/FileDialog;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->fileDialogAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;

    return-object v0
.end method

.method public static getFrameAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->frameAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/Frame;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->frameAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;

    return-object v0
.end method

.method public static getInputEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->inputEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/event/InputEvent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->inputEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;

    return-object v0
.end method

.method public static getInvocationEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->invocationEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;

    return-object v0
.end method

.method public static getKeyEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->keyEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->keyEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;

    return-object v0
.end method

.method public static getKeyboardFocusManagerAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    return-object v0
.end method

.method public static getMenuAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;

    return-object v0
.end method

.method public static getMenuBarAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuBarAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuBarAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;

    return-object v0
.end method

.method public static getMenuComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuComponentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuComponentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

    return-object v0
.end method

.method public static getMenuItemAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;

    return-object v0
.end method

.method public static getMouseEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->mouseEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->mouseEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;

    return-object v0
.end method

.method public static getPopupMenuAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->popupMenuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/PopupMenu;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->popupMenuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;

    return-object v0
.end method

.method public static getScrollPaneAdjustableAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->scrollPaneAdjustableAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->scrollPaneAdjustableAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

    return-object v0
.end method

.method public static getSequencedEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->sequencedEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;

    return-object v0
.end method

.method public static getSystemColorAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemColorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/SystemColor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemColorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;

    return-object v0
.end method

.method public static getSystemTrayAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemTrayAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemTrayAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;

    return-object v0
.end method

.method public static getToolkitAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->toolkitAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/Toolkit;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->toolkitAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;

    return-object v0
.end method

.method public static getTrayIconAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->trayIconAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->trayIconAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;

    return-object v0
.end method

.method public static getWindowAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->windowAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/AWTAccessor;->windowAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;

    return-object v0
.end method

.method public static setAWTEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->awtEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    return-void
.end method

.method public static setAccessibleContextAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->accessibleContextAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$AccessibleContextAccessor;

    return-void
.end method

.method public static setCheckboxMenuItemAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->checkboxMenuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;

    return-void
.end method

.method public static setClientPropertyKeyAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->clientPropertyKeyAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ClientPropertyKeyAccessor;

    return-void
.end method

.method public static setComponentAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->componentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    return-void
.end method

.method public static setContainerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->containerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;

    return-void
.end method

.method public static setCursorAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->cursorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;

    return-void
.end method

.method public static setDefaultKeyboardFocusManagerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->defaultKeyboardFocusManagerAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    return-void
.end method

.method public static setEventQueueAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->eventQueueAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    return-void
.end method

.method public static setFileDialogAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->fileDialogAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;

    return-void
.end method

.method public static setFrameAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->frameAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;

    return-void
.end method

.method public static setInputEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->inputEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InputEventAccessor;

    return-void
.end method

.method public static setInvocationEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->invocationEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;

    return-void
.end method

.method public static setKeyEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->keyEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;

    return-void
.end method

.method public static setKeyboardFocusManagerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    return-void
.end method

.method public static setMenuAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;

    return-void
.end method

.method public static setMenuBarAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuBarAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;

    return-void
.end method

.method public static setMenuComponentAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuComponentAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

    return-void
.end method

.method public static setMenuItemAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->menuItemAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;

    return-void
.end method

.method public static setMouseEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->mouseEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$MouseEventAccessor;

    return-void
.end method

.method public static setPopupMenuAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->popupMenuAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;

    return-void
.end method

.method public static setScrollPaneAdjustableAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->scrollPaneAdjustableAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;

    return-void
.end method

.method public static setSequencedEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->sequencedEventAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;

    return-void
.end method

.method public static setSystemColorAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemColorAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemColorAccessor;

    return-void
.end method

.method public static setSystemTrayAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->systemTrayAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;

    return-void
.end method

.method public static setToolkitAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->toolkitAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$ToolkitAccessor;

    return-void
.end method

.method public static setTrayIconAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->trayIconAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;

    return-void
.end method

.method public static setWindowAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/awt/AWTAccessor;->windowAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;

    return-void
.end method
