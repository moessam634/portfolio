import 'package:flutter/material.dart';

class CustomProjectCard extends StatefulWidget {
  const CustomProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.onTap,
  });

  final String title;
  final String description;
  final String image;
  final VoidCallback? onTap;

  @override
  State<CustomProjectCard> createState() => _CustomProjectCardState();
}

class _CustomProjectCardState extends State<CustomProjectCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 18,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                        Colors.black.withOpacity(0.6),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.5, 1.0],
                    ),
                  ),
                ),
                // "Check it out" overlay on hover
                AnimatedOpacity(
                  opacity: _isHovering ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    alignment: Alignment.center,
                    child: Text(
                      "Check it out",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ),
                // Text content at bottom
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.title,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          widget.description,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white70,
                                  ),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
